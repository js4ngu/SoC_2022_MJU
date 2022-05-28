// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

/***************************** Include Files *********************************/
#include "xmatrixmul.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XMatrixmul_CfgInitialize(XMatrixmul *InstancePtr, XMatrixmul_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Axilites_BaseAddress = ConfigPtr->Axilites_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

//Setting LMvalue
void XMatrixmul_Set_lm(XMatrixmul *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMatrixmul_WriteReg(InstancePtr->Axilites_BaseAddress, XMATRIXMUL_AXILITES_ADDR_LM_DATA, Data);
}

u32 XMatrixmul_Get_lm(XMatrixmul *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMatrixmul_ReadReg(InstancePtr->Axilites_BaseAddress, XMATRIXMUL_AXILITES_ADDR_LM_DATA);
    return Data;
}
//Setting LNvalue
void XMatrixmul_Set_ln(XMatrixmul *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMatrixmul_WriteReg(InstancePtr->Axilites_BaseAddress, XMATRIXMUL_AXILITES_ADDR_LN_DATA, Data);
}

u32 XMatrixmul_Get_ln(XMatrixmul *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMatrixmul_ReadReg(InstancePtr->Axilites_BaseAddress, XMATRIXMUL_AXILITES_ADDR_LN_DATA);
    return Data;
}
//Setting LPvalue
void XMatrixmul_Set_lp(XMatrixmul *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMatrixmul_WriteReg(InstancePtr->Axilites_BaseAddress, XMATRIXMUL_AXILITES_ADDR_LP_DATA, Data);
}

u32 XMatrixmul_Get_lp(XMatrixmul *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMatrixmul_ReadReg(InstancePtr->Axilites_BaseAddress, XMATRIXMUL_AXILITES_ADDR_LP_DATA);
    return Data;
}

