// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

/***************************** Include Files *********************************/
#include "xadder5.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XAdder5_CfgInitialize(XAdder5 *InstancePtr, XAdder5_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Axilites_BaseAddress = ConfigPtr->Axilites_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

u32 XAdder5_Get_A_BaseAddress(XAdder5 *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Axilites_BaseAddress + XADDER5_AXILITES_ADDR_A_BASE);
}

u32 XAdder5_Get_A_HighAddress(XAdder5 *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Axilites_BaseAddress + XADDER5_AXILITES_ADDR_A_HIGH);
}

u32 XAdder5_Get_A_TotalBytes(XAdder5 *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XADDER5_AXILITES_ADDR_A_HIGH - XADDER5_AXILITES_ADDR_A_BASE + 1);
}

u32 XAdder5_Get_A_BitWidth(XAdder5 *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XADDER5_AXILITES_WIDTH_A;
}

u32 XAdder5_Get_A_Depth(XAdder5 *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XADDER5_AXILITES_DEPTH_A;
}

u32 XAdder5_Write_A_Words(XAdder5 *InstancePtr, int offset, int *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XADDER5_AXILITES_ADDR_A_HIGH - XADDER5_AXILITES_ADDR_A_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Axilites_BaseAddress + XADDER5_AXILITES_ADDR_A_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XAdder5_Read_A_Words(XAdder5 *InstancePtr, int offset, int *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XADDER5_AXILITES_ADDR_A_HIGH - XADDER5_AXILITES_ADDR_A_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Axilites_BaseAddress + XADDER5_AXILITES_ADDR_A_BASE + (offset + i)*4);
    }
    return length;
}

u32 XAdder5_Write_A_Bytes(XAdder5 *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XADDER5_AXILITES_ADDR_A_HIGH - XADDER5_AXILITES_ADDR_A_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Axilites_BaseAddress + XADDER5_AXILITES_ADDR_A_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XAdder5_Read_A_Bytes(XAdder5 *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XADDER5_AXILITES_ADDR_A_HIGH - XADDER5_AXILITES_ADDR_A_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Axilites_BaseAddress + XADDER5_AXILITES_ADDR_A_BASE + offset + i);
    }
    return length;
}

u32 XAdder5_Get_B_BaseAddress(XAdder5 *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Axilites_BaseAddress + XADDER5_AXILITES_ADDR_B_BASE);
}

u32 XAdder5_Get_B_HighAddress(XAdder5 *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Axilites_BaseAddress + XADDER5_AXILITES_ADDR_B_HIGH);
}

u32 XAdder5_Get_B_TotalBytes(XAdder5 *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XADDER5_AXILITES_ADDR_B_HIGH - XADDER5_AXILITES_ADDR_B_BASE + 1);
}

u32 XAdder5_Get_B_BitWidth(XAdder5 *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XADDER5_AXILITES_WIDTH_B;
}

u32 XAdder5_Get_B_Depth(XAdder5 *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XADDER5_AXILITES_DEPTH_B;
}

u32 XAdder5_Write_B_Words(XAdder5 *InstancePtr, int offset, int *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XADDER5_AXILITES_ADDR_B_HIGH - XADDER5_AXILITES_ADDR_B_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Axilites_BaseAddress + XADDER5_AXILITES_ADDR_B_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XAdder5_Read_B_Words(XAdder5 *InstancePtr, int offset, int *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XADDER5_AXILITES_ADDR_B_HIGH - XADDER5_AXILITES_ADDR_B_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Axilites_BaseAddress + XADDER5_AXILITES_ADDR_B_BASE + (offset + i)*4);
    }
    return length;
}

u32 XAdder5_Write_B_Bytes(XAdder5 *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XADDER5_AXILITES_ADDR_B_HIGH - XADDER5_AXILITES_ADDR_B_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Axilites_BaseAddress + XADDER5_AXILITES_ADDR_B_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XAdder5_Read_B_Bytes(XAdder5 *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XADDER5_AXILITES_ADDR_B_HIGH - XADDER5_AXILITES_ADDR_B_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Axilites_BaseAddress + XADDER5_AXILITES_ADDR_B_BASE + offset + i);
    }
    return length;
}
