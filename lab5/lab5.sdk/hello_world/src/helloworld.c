#include <stdio.h>
#include "platform.h"
#include "xbasic_types.h"
#include "xparameters.h"

Xuint32 *baseaddr_p = (Xuint32*)XPAR_MY_MULTIPLIER_0_S00_AXI_BASEADDR;

void print(char *str);

int main()
{
    init_platform();

    xil_printf("Multiplier_Test\n\r");

    //Write multiplier inputs to register 0
    *(baseaddr_p+0) = 0x00020003;
    xil_printf("Wrote: 0x%08x \n\r", *(baseaddr_p+0));

    //Read multiplier output to register 1
    xil_printf("Read: 0x%08x \n\r", *(baseaddr_p+1));

    xil_printf("End of Test\n\n\r");

    cleanup_platform();
    return 0;
}
