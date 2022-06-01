#include <stdio.h>
#include "platform.h"
#include "xil_types.h"
#include "xil_printf.h"
#include "xadder5_hw.h"
#include "xadder5.h"

int main()
{
static XAdder5 Adder5Instance_Ptr;
    init_platform();

    print("Start\n\r");

    XAdder5_Initialize(&Adder5Instance_Ptr, XPAR_XADDER5_0_DEVICE_ID);

    int data_A[50], data_B[50];
    for (int i=0; i<50; i++) data_A[i]=i;

    XAdder5_Write_A_Words(&Adder5Instance_Ptr, 0, data_A, 50);
    XAdder5_Read_B_Words(&Adder5Instance_Ptr, 0, data_B, 50);

    for (int i=0; i<50; i++) xil_printf("%d data_A=%d data_B=%d\n\r", i, data_A[i], data_B[i]);

    cleanup_platform();
    return 0;
}

