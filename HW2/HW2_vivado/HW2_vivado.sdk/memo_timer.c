#include "xparameters.h"
#include "xtmrctr.h"
#include "xil_printf.h"

#define TMRCTR_DEVICE_ID	XPAR_TMRCTR_0_DEVICE_ID
#define TIMER_COUNTER_0	 0

int TmrCtr_init(u16 DeviceId, u8 TmrCtrNumber);
XTmrCtr TimerCounter; /* The instance of the Tmrctr Device */

int main(void) {
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
    print("%d", vlaue);

    return 0;
}


/*****************************************************************************/
/**
* This function does a minimal test on the timer counter device and
* driver as a design example. The purpose of this function is to illustrate
* how to use the XTmrCtr component in a polled mode.
*
*
* @param	DeviceId is the XPAR_<TMRCTR_instance>_DEVICE_ID value from
*		xparameters.h
* @param	TmrCtrNumber is the timer counter of the device to operate on.
*		 Each device may contain multiple timer counters.
*		The timer number is a zero based number with a range of
*		0 - (XTC_DEVICE_TIMER_COUNT - 1).
*
* @return	XST_SUCCESS to indicate success, else XST_FAILURE to indicate
*		a Failure.
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
