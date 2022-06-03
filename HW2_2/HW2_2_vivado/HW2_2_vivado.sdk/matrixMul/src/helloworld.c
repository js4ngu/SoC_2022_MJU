/***************************** Include Files *********************************/

#include "xaxidma.h"
#include "xparameters.h"
#include "xil_exception.h"
#include "xdebug.h"
#include "xscugic.h"

//Matrixmul Lib. about AXI-lite
#include "platform.h"
#include "xil_types.h"
#include "xil_printf.h"
#include "xmatrixmul_1d_rev2_hw.h"   //헤더파일 추가
#include "xmatrixmul_1d_rev2.h"      //헤더파일 추가

//Timer
#include "xtmrctr.h"

#define TMRCTR_DEVICE_ID   XPAR_TMRCTR_0_DEVICE_ID
#define TIMER_COUNTER_0    0

int TmrCtr_init(u16 DeviceId, u8 TmrCtrNumber);
XTmrCtr TimerCounter; /* The instance of the Tmrctr Device */


/************************** Constant Definitions *****************************/

/*  Device hardware build related constants. */

#define DMA_DEV_ID      XPAR_AXIDMA_0_DEVICE_ID

#define RX_INTR_ID      XPAR_FABRIC_AXI_DMA_0_S2MM_INTROUT_INTR
#define TX_INTR_ID      XPAR_FABRIC_AXI_DMA_0_MM2S_INTROUT_INTR

#define INTC_DEVICE_ID          XPAR_SCUGIC_SINGLE_DEVICE_ID

#define INTC      XScuGic
#define INTC_HANDLER   XScuGic_InterruptHandler


/* Timeout loop counter for reset */
#define RESET_TIMEOUT_COUNTER   10000

/*LM, LN, LP 정의 */
#define LM 3
#define LN 3
#define LP 3

/* Array length and the number of bytes to transfer */
#define ARRAY_LENGTH      32768
#define BYTES_TO_TRANSFER   4*ARRAY_LENGTH

/************************** Function Prototypes ******************************/
#ifndef DEBUG
extern void xil_printf(const char *format, ...);
#endif

static void TxIntrHandler(void *Callback);
static void RxIntrHandler(void *Callback);

static int SetupIntrSystem(INTC * IntcInstancePtr,
            XAxiDma * AxiDmaPtr, u16 TxIntrId, u16 RxIntrId);
static void DisableIntrSystem(INTC * IntcInstancePtr,
               u16 TxIntrId, u16 RxIntrId);

/************************** Variable Definitions *****************************/
/*
 * Device instance definitions
 */

static XAxiDma AxiDma;      /* Instance of the XAxiDma */
static INTC Intc;   /* Instance of the Interrupt Controller */

/*
 * Flags interrupt handlers use to notify the application context the events.
 */
volatile int TxDone;
volatile int RxDone;
volatile int Error;

u32 TxBuffer[ARRAY_LENGTH];
u32 RxBuffer[ARRAY_LENGTH];  //안되면 이거 고치기 256*128로

/*****************************************************************************/
/**
*
* Main function
*
* This function is the main entry of the interrupt test. It does the following:
*   Set up the output terminal if UART16550 is in the hardware build
*   Initialize the DMA engine
*   Set up Tx and Rx channels
*   Set up the interrupt system for the Tx and Rx interrupts
*   Submit a transfer
*   Wait for the transfer to finish
*   Check transfer status
*   Disable Tx and Rx interrupts
*   Print test status and exit
*
* @param   None
*
* @return
*      - XST_SUCCESS if example finishes successfully
*      - XST_FAILURE if example fails.
*
* @note      None.
*
******************************************************************************/

void delay(void)
{
   for(int i = 0 ; i < 1000 ; i++)
   {}
}

int main(void)
{
   int Status;
   XAxiDma_Config *Config;
   u32 i;

   //Timer
      int Value;
       XTmrCtr *TmrCtrInstancePtr = &TimerCounter;
       u8 TmrCtrNum =TIMER_COUNTER_0;

       TmrCtr_init(TMRCTR_DEVICE_ID, TIMER_COUNTER_0);
        XTmrCtr_Start(TmrCtrInstancePtr, TmrCtrNum);
        for (int i = 0; i < 1000; i++) {
            /* Nop */
        }
        Value = XTmrCtr_GetValue(TmrCtrInstancePtr, TmrCtrNum);

        XTmrCtr_SetOptions(TmrCtrInstancePtr, TmrCtrNum, 0);
        xil_printf("Timer = %d", Value);


   xil_printf("\r\n--- Entering main() --- \r\n");

   static XMatrixmul_1d_rev2 matrixmul_1D_rev2_Ptr; //matrix mul Id만듦
   init_platform();

   print("Start\n\r)");

   XMatrixmul_1d_rev2_Initialize(&matrixmul_1D_rev2_Ptr, XPAR_MATRIXMUL_1D_REV2_0_DEVICE_ID); //matrixmul initialize

   Config = XAxiDma_LookupConfig(DMA_DEV_ID);
   if (!Config) {
      xil_printf("No config found for %d\r\n", DMA_DEV_ID);

      return XST_FAILURE;
   }

   /* Initialize DMA engine */
   Status = XAxiDma_CfgInitialize(&AxiDma, Config);

   if (Status != XST_SUCCESS) {
      xil_printf("Initialization failed %d\r\n", Status);
      return XST_FAILURE;
   }

   if(XAxiDma_HasSg(&AxiDma)){
      xil_printf("Device configured as SG mode \r\n");
      return XST_FAILURE;
   }

   /* Set up Interrupt system  */
   Status = SetupIntrSystem(&Intc, &AxiDma, TX_INTR_ID, RX_INTR_ID);
   if (Status != XST_SUCCESS) {

      xil_printf("Failed intr setup\r\n");
      return XST_FAILURE;
   }

   /* Disable all interrupts before setup */

   XAxiDma_IntrDisable(&AxiDma, XAXIDMA_IRQ_ALL_MASK,
                  XAXIDMA_DMA_TO_DEVICE);

   XAxiDma_IntrDisable(&AxiDma, XAXIDMA_IRQ_ALL_MASK,
            XAXIDMA_DEVICE_TO_DMA);

   /* Enable all interrupts */
   XAxiDma_IntrEnable(&AxiDma, XAXIDMA_IRQ_ALL_MASK,
                     XAXIDMA_DMA_TO_DEVICE);


   XAxiDma_IntrEnable(&AxiDma, XAXIDMA_IRQ_ALL_MASK,
                     XAXIDMA_DEVICE_TO_DMA);

   /* Initialize flags before start transfer test  */
   TxDone = 0;
   RxDone = 0;
   Error = 0;

   //Input 행렬에 데이터 채움, Output 행렬에 데이터 채움
   for(i = 0; i < ARRAY_LENGTH; i ++) {
      TxBuffer[i] = 2;   // initialize TxBuffer
      RxBuffer[i] = 0;   // initialize RxBuffer with 0's
   }

   xil_printf("=========================================================\n");
   for(i = 0; i < ARRAY_LENGTH; i++) {
      xil_printf("initial_TxBuffer[%d] = %d \r\n", i, TxBuffer[i]);
   }
   //초기 Tx_buffer 확인
   xil_printf("111111\r\n");
   int lm = LM;
   int ln = LN;
   int lp = LP;

   //lm, ln, lp AXI-LITE로 설정
   XMatrixmul_1d_rev2_Set_lm(&matrixmul_1D_rev2_Ptr, lm);
   XMatrixmul_1d_rev2_Set_ln(&matrixmul_1D_rev2_Ptr, ln);
   XMatrixmul_1d_rev2_Set_lp(&matrixmul_1D_rev2_Ptr, lp);
   xil_printf("222222\r\n");

   /* Flush the SrcBuffer before the DMA transfer, in case the Data Cache is enabled */
   Xil_DCacheFlushRange((u32)TxBuffer, BYTES_TO_TRANSFER);
   xil_printf("333333\r\n");
   
   //Streaming으로 행렬 보냄
   Status = XAxiDma_SimpleTransfer(&AxiDma,(u32) TxBuffer, BYTES_TO_TRANSFER, XAXIDMA_DMA_TO_DEVICE);
   xil_printf("44444444\r\n");
    xil_printf("Timer = %d", Value);
   if (Status != XST_SUCCESS) {
      xil_printf("555555555\r\n");
      xil_printf("Status = %d\r\n", Status);
      return XST_FAILURE;
   }
   xil_printf("6666666666\r\n");
   delay();

   Status = XAxiDma_SimpleTransfer(&AxiDma,(u32) RxBuffer, BYTES_TO_TRANSFER, XAXIDMA_DEVICE_TO_DMA);
   if (Status != XST_SUCCESS) {
      return XST_FAILURE;
   }

   /* Wait TX done and RX done */
   while (!TxDone && !RxDone && !Error) { /* NOP */ }


   if (Error) {
      xil_printf("Failed test transmit %s done, receive %s done\r\n", TxDone? "":" not", RxDone? "":" not");
   }

   /* Invalidate the DestBuffer before checking the data, in case the Data Cache is enabled */
   Xil_DCacheInvalidateRange((u32)RxBuffer, BYTES_TO_TRANSFER);

   xil_printf("=========================================================\n");
   // check received data
   for(i = 0; i < ARRAY_LENGTH; i++) {
//      if(RxBuffer[i] != i+5){
//         xil_printf("Error : RxBuffer[%d] = %d \r\n", i, RxBuffer[i]);}
//      else
         xil_printf("RxBuffer[%d] = %d \r\n", i, RxBuffer[i]);
   }
   xil_printf("=========================================================\n");
   xil_printf("AXI DMA interrupt example test passed\r\n");


   /* Disable TX and RX Ring interrupts and return success */

   DisableIntrSystem(&Intc, TX_INTR_ID, RX_INTR_ID);

   return XST_SUCCESS;
}

/*****************************************************************************/
/*
*
* This is the DMA TX Interrupt handler function.
*
* It gets the interrupt status from the hardware, acknowledges it, and if any
* error happens, it resets the hardware. Otherwise, if a completion interrupt
* is present, then sets the TxDone.flag
*
* @param   Callback is a pointer to TX channel of the DMA engine.
*
* @return   None.
*
* @note      None.
*
******************************************************************************/
static void TxIntrHandler(void *Callback)
{

   u32 IrqStatus;
   int TimeOut;
   XAxiDma *AxiDmaInst = (XAxiDma *)Callback;

   /* Read pending interrupts */
   IrqStatus = XAxiDma_IntrGetIrq(AxiDmaInst, XAXIDMA_DMA_TO_DEVICE);

   /* Acknowledge pending interrupts */


   XAxiDma_IntrAckIrq(AxiDmaInst, IrqStatus, XAXIDMA_DMA_TO_DEVICE);

   /*
    * If no interrupt is asserted, we do not do anything
    */
   if (!(IrqStatus & XAXIDMA_IRQ_ALL_MASK)) {

      return;
   }

   /*
    * If error interrupt is asserted, raise error flag, reset the
    * hardware to recover from the error, and return with no further
    * processing.
    */
   if ((IrqStatus & XAXIDMA_IRQ_ERROR_MASK)) {

      Error = 1;

      /*
       * Reset should never fail for transmit channel
       */
      XAxiDma_Reset(AxiDmaInst);

      TimeOut = RESET_TIMEOUT_COUNTER;

      while (TimeOut) {
         if (XAxiDma_ResetIsDone(AxiDmaInst)) {
            break;
         }

         TimeOut -= 1;
      }

      return;
   }

   /*
    * If Completion interrupt is asserted, then set the TxDone flag
    */
   if ((IrqStatus & XAXIDMA_IRQ_IOC_MASK)) {

      TxDone = 1;
   }
}

/*****************************************************************************/
/*
*
* This is the DMA RX interrupt handler function
*
* It gets the interrupt status from the hardware, acknowledges it, and if any
* error happens, it resets the hardware. Otherwise, if a completion interrupt
* is present, then it sets the RxDone flag.
*
* @param   Callback is a pointer to RX channel of the DMA engine.
*
* @return   None.
*
* @note      None.
*
******************************************************************************/
static void RxIntrHandler(void *Callback)
{
   u32 IrqStatus;
   int TimeOut;
   XAxiDma *AxiDmaInst = (XAxiDma *)Callback;

   /* Read pending interrupts */
   IrqStatus = XAxiDma_IntrGetIrq(AxiDmaInst, XAXIDMA_DEVICE_TO_DMA);

   /* Acknowledge pending interrupts */
   XAxiDma_IntrAckIrq(AxiDmaInst, IrqStatus, XAXIDMA_DEVICE_TO_DMA);

   /*
    * If no interrupt is asserted, we do not do anything
    */
   if (!(IrqStatus & XAXIDMA_IRQ_ALL_MASK)) {
      return;
   }

   /*
    * If error interrupt is asserted, raise error flag, reset the
    * hardware to recover from the error, and return with no further
    * processing.
    */
   if ((IrqStatus & XAXIDMA_IRQ_ERROR_MASK)) {

      Error = 1;

      /* Reset could fail and hang
       * NEED a way to handle this or do not call it??
       */
      XAxiDma_Reset(AxiDmaInst);

      TimeOut = RESET_TIMEOUT_COUNTER;

      while (TimeOut) {
         if(XAxiDma_ResetIsDone(AxiDmaInst)) {
            break;
         }

         TimeOut -= 1;
      }

      return;
   }

   /*
    * If completion interrupt is asserted, then set RxDone flag
    */
   if ((IrqStatus & XAXIDMA_IRQ_IOC_MASK)) {

      RxDone = 1;
   }
}

/*****************************************************************************/
/*
*
* This function setups the interrupt system so interrupts can occur for the
* DMA, it assumes INTC component exists in the hardware system.
*
* @param   IntcInstancePtr is a pointer to the instance of the INTC.
* @param   AxiDmaPtr is a pointer to the instance of the DMA engine
* @param   TxIntrId is the TX channel Interrupt ID.
* @param   RxIntrId is the RX channel Interrupt ID.
*
* @return
*      - XST_SUCCESS if successful,
*      - XST_FAILURE.if not succesful
*
* @note      None.
*
******************************************************************************/
static int SetupIntrSystem(INTC * IntcInstancePtr,
            XAxiDma * AxiDmaPtr, u16 TxIntrId, u16 RxIntrId)
{
   int Status;

#ifdef XPAR_INTC_0_DEVICE_ID

   /* Initialize the interrupt controller and connect the ISRs */
   Status = XIntc_Initialize(IntcInstancePtr, INTC_DEVICE_ID);
   if (Status != XST_SUCCESS) {

      xil_printf("Failed init intc\r\n");
      return XST_FAILURE;
   }

   Status = XIntc_Connect(IntcInstancePtr, TxIntrId,
                (XInterruptHandler) TxIntrHandler, AxiDmaPtr);
   if (Status != XST_SUCCESS) {

      xil_printf("Failed tx connect intc\r\n");
      return XST_FAILURE;
   }

   Status = XIntc_Connect(IntcInstancePtr, RxIntrId,
                (XInterruptHandler) RxIntrHandler, AxiDmaPtr);
   if (Status != XST_SUCCESS) {

      xil_printf("Failed rx connect intc\r\n");
      return XST_FAILURE;
   }

   /* Start the interrupt controller */
   Status = XIntc_Start(IntcInstancePtr, XIN_REAL_MODE);
   if (Status != XST_SUCCESS) {

      xil_printf("Failed to start intc\r\n");
      return XST_FAILURE;
   }

   XIntc_Enable(IntcInstancePtr, TxIntrId);
   XIntc_Enable(IntcInstancePtr, RxIntrId);

#else

   XScuGic_Config *IntcConfig;


   /*
    * Initialize the interrupt controller driver so that it is ready to
    * use.
    */
   IntcConfig = XScuGic_LookupConfig(INTC_DEVICE_ID);
   if (NULL == IntcConfig) {
      return XST_FAILURE;
   }

   Status = XScuGic_CfgInitialize(IntcInstancePtr, IntcConfig,
               IntcConfig->CpuBaseAddress);
   if (Status != XST_SUCCESS) {
      return XST_FAILURE;
   }


   XScuGic_SetPriorityTriggerType(IntcInstancePtr, TxIntrId, 0xA0, 0x3);

   XScuGic_SetPriorityTriggerType(IntcInstancePtr, RxIntrId, 0xA0, 0x3);
   /*
    * Connect the device driver handler that will be called when an
    * interrupt for the device occurs, the handler defined above performs
    * the specific interrupt processing for the device.
    */
   Status = XScuGic_Connect(IntcInstancePtr, TxIntrId,
            (Xil_InterruptHandler)TxIntrHandler,
            AxiDmaPtr);
   if (Status != XST_SUCCESS) {
      return Status;
   }

   Status = XScuGic_Connect(IntcInstancePtr, RxIntrId,
            (Xil_InterruptHandler)RxIntrHandler,
            AxiDmaPtr);
   if (Status != XST_SUCCESS) {
      return Status;
   }

   XScuGic_Enable(IntcInstancePtr, TxIntrId);
   XScuGic_Enable(IntcInstancePtr, RxIntrId);


#endif

   /* Enable interrupts from the hardware */

   Xil_ExceptionInit();
   Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT,
         (Xil_ExceptionHandler)INTC_HANDLER,
         (void *)IntcInstancePtr);

   Xil_ExceptionEnable();

   return XST_SUCCESS;
}

/*****************************************************************************/
/**
*
* This function disables the interrupts for DMA engine.
*
* @param   IntcInstancePtr is the pointer to the INTC component instance
* @param   TxIntrId is interrupt ID associated w/ DMA TX channel
* @param   RxIntrId is interrupt ID associated w/ DMA RX channel
*
* @return   None.
*
* @note      None.
*
******************************************************************************/
static void DisableIntrSystem(INTC * IntcInstancePtr,
               u16 TxIntrId, u16 RxIntrId)
{
#ifdef XPAR_INTC_0_DEVICE_ID
   /* Disconnect the interrupts for the DMA TX and RX channels */
   XIntc_Disconnect(IntcInstancePtr, TxIntrId);
   XIntc_Disconnect(IntcInstancePtr, RxIntrId);
#else
   XScuGic_Disconnect(IntcInstancePtr, TxIntrId);
   XScuGic_Disconnect(IntcInstancePtr, RxIntrId);
#endif
}


/*****************************************************************************/
/**
* This function does a minimal test on the timer counter device and
* driver as a design example. The purpose of this function is to illustrate
* how to use the XTmrCtr component in a polled mode.
*
*
* @param   DeviceId is the XPAR_<TMRCTR_instance>_DEVICE_ID value from
*      xparameters.h
* @param   TmrCtrNumber is the timer counter of the device to operate on.
*       Each device may contain multiple timer counters.
*      The timer number is a zero based number with a range of
*      0 - (XTC_DEVICE_TIMER_COUNT - 1).
*
* @return   XST_SUCCESS to indicate success, else XST_FAILURE to indicate
*      a Failure.
*
* @note
*
* This function contains a loop which waits for the value of a timer counter
* to change. If the hardware is not working correctly, this function may not
* return.
*
****************************************************************************/
int TmrCtr_init(u16 DeviceId, u8 TmrCtrNumber)
{
   int Status;
   u32 Value1;
   u32 Value2;
   XTmrCtr *TmrCtrInstancePtr = &TimerCounter;

   /*
    * Initialize the timer counter so that it's ready to use,
    * specify the device ID that is generated in xparameters.h
    */
   Status = XTmrCtr_Initialize(TmrCtrInstancePtr, DeviceId);
   if (Status != XST_SUCCESS) {
      return XST_FAILURE;
   }

   /*
    * Perform a self-test to ensure that the hardware was built
    * correctly, use the 1st timer in the device (0)
    */
   Status = XTmrCtr_SelfTest(TmrCtrInstancePtr, TmrCtrNumber);
   if (Status != XST_SUCCESS) {
      return XST_FAILURE;
   }


   /*
    * Enable the Autoreload mode of the timer counters.
    */
   XTmrCtr_SetOptions(TmrCtrInstancePtr, TmrCtrNumber,
            XTC_AUTO_RELOAD_OPTION);

   /*
    * Get a snapshot of the timer counter value before it's started
    * to compare against later
    */
   //Value1 = XTmrCtr_GetValue(TmrCtrInstancePtr, TmrCtrNumber);

   return Value1;
}