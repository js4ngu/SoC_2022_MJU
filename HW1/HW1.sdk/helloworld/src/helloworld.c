#include <stdio.h>
#include "platform.h"
#include "xgpio.h"  //GPIO PL(LED, BTN, Dip switch) ����ϱ� ���� header file
#include "xgpiops.h"  //GPIO PS ����ϱ� ���� header file (������ �Ǵ��� �����غ���)
#include "sleep.h"  //usleep ����� ���� header file

int ALU(unsigned int DIP, unsigned int BTN, unsigned int RESULT);

int main() {
    static XGpio input,output;
    unsigned int result = 6;  // ALU ����� ������ register
    unsigned int DIP_SW_data = 0;
    unsigned int BTN_data = 0;
    int xStatus;

    init_platform();  //UART �� cache �ʱ�ȭ

    //GPIO 0 �ʱ�ȭ : input �κ�
    //AXI GPIO_SW Initialization
    //AXI GPIO_Button Initialization
    xStatus = XGpio_Initialize(&input, XPAR_AXI_GPIO_0_DEVICE_ID);
    if(XST_SUCCESS != xStatus)
        printf("GPIO_SW INIT FAILDED \n\r");

    //GPIO 1 �ʱ�ȭ :output �κ�
    //AXI GPIO_LED Initialization
    xStatus = XGpio_Initialize(&output,XPAR_AXI_GPIO_1_DEVICE_ID);
    if(XST_SUCCESS != xStatus)
        printf("GPIO_LED INIT FAILDED \n\r");

    //AXI GPIO ����� ����
    XGpio_SetDataDirection(&input,1,1);  // 1 : 1st channel, 1 : �Է� -> DIP SW
    XGpio_SetDataDirection(&input,2,1);  // 1 : 2st channel, 1 : �Է� -> BTN
    XGpio_SetDataDirection(&output,1,0); // 1 : single channel 0 : ���

    while(1) {
        DIP_SW_data = XGpio_DiscreteRead(&input, 1);  //switch���� �Է�
        BTN_data = XGpio_DiscreteRead(&input, 2); //BTN���� �Է�
        result = ALU(DIP_SW_data, BTN_data, result);
        XGpio_DiscreteWrite(&output, 1 , result);   //LED OUT
        usleep(1000000);
    }
    cleanup_platform();
    return 0;
}

int ALU(unsigned int DIP, unsigned int BTN, unsigned int RESULT) {
    unsigned int output;
    if (BTN == 1) {
       output = 0b0110;
    }
    else if(DIP == 0b0000) output = RESULT + 1;
    else if(DIP == 0b0100) output = RESULT + 2;
    else if(DIP == 0b1000) output = RESULT + 3;
    else if(DIP == 0b1100) output = RESULT + 4;
    else if(DIP == 0b0001) output = RESULT - 1;
    else if(DIP == 0b0101) output = RESULT - 2;
    else if(DIP == 0b1001) output = RESULT - 3;
    else if(DIP == 0b1101) output = RESULT - 4;
    else if(DIP == 0b0010) output = RESULT * 1;
    else if(DIP == 0b0110) output = RESULT * 2;
    else if(DIP == 0b1010) output = RESULT * 3;
    else if(DIP == 0b1110) output = RESULT * 4;
    else if(DIP == 0b0011) output = RESULT << 1;
    else if(DIP == 0b0111) output = RESULT << 2;
    else if(DIP == 0b1011) output = RESULT << 3;
    else if(DIP == 0b1111) output = RESULT << 4;
    printf("%d %d\n", DIP, output%16);
    return output % 16;
}
