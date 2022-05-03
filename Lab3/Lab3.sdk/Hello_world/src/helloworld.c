#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#include "xgpiops.h"

//void print(char *str);

int main() {
    static XGpioPs psGpioInstancePtr;
    XGpioPs_Config *GpioConfigPtr;
    int xStatus;
    int BtnPinDirection = 0, BtnPinNumber = 50;
    int LedPinDirection = 1, LedPinNumber = 7;
    int ReadStatus=0, OldStatus=0;

    init_platform();

    print("Hello World\n\r");


    // PS GPIO Initialization

    GpioConfigPtr = XGpioPs_LookupConfig(XPAR_PS7_GPIO_0_DEVICE_ID); //GPIO confiquration pointer를 찾음
    if (GpioConfigPtr==NULL) return XST_FAILURE;

    xStatus = XGpioPs_CfgInitialize(&psGpioInstancePtr, GpioConfigPtr, GpioConfigPtr->BaseAddr);
    if (XST_SUCCESS != xStatus) print("PS GPIO INIT FAILED \n\r");


    // PS GPIO pin setting
    // Push button input
    XGpioPs_SetDirectionPin(&psGpioInstancePtr, BtnPinNumber, BtnPinDirection);
    XGpioPs_SetOutputEnablePin(&psGpioInstancePtr, BtnPinNumber, 0);

    // LED output
    XGpioPs_SetDirectionPin(&psGpioInstancePtr, LedPinNumber, LedPinDirection);
    XGpioPs_SetOutputEnablePin(&psGpioInstancePtr, LedPinNumber, 0);

    xStatus = 0;

    while(1) {
        ReadStatus = XGpioPs_ReadPin(&psGpioInstancePtr, BtnPinNumber);
        if ((ReadStatus==1) && (OldStatus == 0)) {
            print("BTN8_PUSH Button pressed \r\n");
            if (xStatus==1){
                xStatus = 0;
                XGpioPs_WritePin(&psGpioInstancePtr, LedPinNumber, 0);
                print("LED is OFF \r\n");
            }
            else {
                xStatus = 1;
                XGpioPs_WritePin(&psGpioInstancePtr, LedPinNumber, 1);
                print("LED is ON \r\n");
            }
        }
        OldStatus = ReadStatus;
    }

   cleanup_platform();
   return 0;
}
