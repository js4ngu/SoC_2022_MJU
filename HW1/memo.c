#include <stdio.h>
#include "platform.h"
#include "xgpio.h"  //GPIO PL(LED, BTN, Dip switch) 사용하기 위한 header file
#include "xgpiops.h"  //GPIO PS 사용하기 위한 header file (지워도 되는지 실험해보기)
#include "sleep.h"  //usleep 사용을 위한 header file

int ALU(int step, int opcode);

int main() {
    static XGpio input, output;
    //static XGpioPs psGpioInstance_ptr;  //PS의 GPIO를 사용하기 위한 pointer
    //static XGpioPs_Config *GpioConfigPtr;      //PS의 GPIO 설정을 위한 pointer
    unsigned int Result = 0b0110;      // ALU 결과를 저장할 register
    unsigned int DIP_SW_data = 0b0000;
    unsigned int BTN_data = 0b0000;
    int xStatus;

    init_platform();  //UART 및 cache 초기화

    //GPIO 0 초기화 : input 부분
    //AXI GPIO_SW Initialization
    //AXI GPIO_Button Initialization
    xStatus = XGpio_Initialize(&input, XPAR_AXI_GPIO_0_IS_DUAL);
    if(XST_SUCCESS != xStatus)
        print("GPIO_SW INIT FAILDED \n\r");

    //GPIO 1 초기화 : output 부분
    //AXI GPIO_LED Initialization
    xStatus = XGpio_Initialize(&output,XPAR_AXI_GPIO_1_DEVICE_ID);
    if(XST_SUCCESS != xStatus)
        print("GPIO_LED INIT FAILDED \n\r");

    //AXI GPIO 입출력 설정
    XGpio_SetDataDirection(&input,1,1);  // 1 : 1st channel, 1 : 입력 -> DIP SW
    XGpio_SetDataDirection(&input,2,1);  // 1 : 2st channel, 1 : 입력 -> BTN
    XGpio_SetDataDirection(&output,1,0); // 1 : single channel 0 : 출력

    while(1) {
        DIP_SW_data = XGpio_DiscreteRead(&input, 1);  //switch에서 입력
        BTN_data = XGpio_DiscreteRead(&input, 2);     //BTN에서 입력
        print("%b %b\n", DIP_SW_data, BTN_data);
        
        XGpio_DiscreteWrite(&output, 1 , Result);       //LED OUT
        usleep(1000);
    }
    cleanup_platform();
    return 0;
}