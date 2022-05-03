#include <stdio.h>
#include "platform.h"
#include "xgpio.h"
#include "xgpiops.h"

int main()
{
static XGpio GpioInstance_ptr;
static XGpioPs psGpioInstance_ptr;
XGpioPs_Config *GpioConfigPtr;
u8 count = 0;
int xStatus;
int BtnPinDirection = 0, BtnPinNumber = 50;
int Readstatus = 0, OldReadstatus = 0;

init_platform();

       // AXI GPIO Initialization
       xStatus = XGpio_Initialize(&GpioInstance_ptr,XPAR_AXI_GPIO_0_DEVICE_ID);
       if(XST_SUCCESS != xStatus)
       print("GPIO INIT FAILDED \n\r");

       // AXI GPIO Set
       XGpio_SetDataDirection(&GpioInstance_ptr,1,0);

       // PS GPIO Initialization
       GpioConfigPtr = XGpioPs_LookupConfig(XPAR_PS7_GPIO_0_DEVICE_ID);
       if(GpioConfigPtr == NULL)
       return XST_FAILURE;
       xStatus =  XGpioPs_CfgInitialize(&psGpioInstance_ptr, GpioConfigPtr, GpioConfigPtr->BaseAddr);
             if(XST_SUCCESS != xStatus)
             print("PS GPIO INIT FAILED \n\r");

             // PS GPIO pin setting to input
             XGpioPs_SetDirectionPin(&psGpioInstance_ptr,BtnPinNumber,BtnPinDirection);
             XGpioPs_SetOutputEnablePin(&psGpioInstance_ptr,BtnPinNumber,0);

             while(1)
                {
                Readstatus =  XGpioPs_ReadPin(&psGpioInstance_ptr,BtnPinNumber);
                if((Readstatus == 1) && ( OldReadstatus == 0) )
                {
                print("BTN PUSH Button pressed \n\r");

                count++;

                XGpio_DiscreteWrite(&GpioInstance_ptr,1,count);
                }
                OldReadstatus = Readstatus;

                }

                cleanup_platform();
                return 0;
            }
