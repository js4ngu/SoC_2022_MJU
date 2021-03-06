#include <stdio.h>
#include "platform.h"
#include "xil_types.h"
#include "xil_printf.h"
#include "xmatrixmul_hw.h"
#include "xmatrixmul.h"

#define LM 3
#define LN 3
#define LP 3

int main(){
    static XMatrixmul MatrixMulInstance_Ptr;
    init_platform();

    print("Start\n\r");
    XMatrixmul_Initialize(&MatrixMulInstance_Ptr, XPAR_MATRIXMUL_0_DEVICE_ID);
    
    XMatrixmul_Set_lm(&MatrixMulInstance_Ptr, LM);
    XMatrixmul_Set_ln(&MatrixMulInstance_Ptr, LN);
    XMatrixmul_Set_lp(&MatrixMulInstance_Ptr, LP);
    
    cleanup_platform();
    return 0;
}

