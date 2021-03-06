// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

#ifndef XMATRIXMUL_1D_REV2_H
#define XMATRIXMUL_1D_REV2_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xmatrixmul_1d_rev2_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
#else
typedef struct {
    u16 DeviceId;
    u32 Axilites_BaseAddress;
} XMatrixmul_1d_rev2_Config;
#endif

typedef struct {
    u32 Axilites_BaseAddress;
    u32 IsReady;
} XMatrixmul_1d_rev2;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XMatrixmul_1d_rev2_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XMatrixmul_1d_rev2_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XMatrixmul_1d_rev2_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XMatrixmul_1d_rev2_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XMatrixmul_1d_rev2_Initialize(XMatrixmul_1d_rev2 *InstancePtr, u16 DeviceId);
XMatrixmul_1d_rev2_Config* XMatrixmul_1d_rev2_LookupConfig(u16 DeviceId);
int XMatrixmul_1d_rev2_CfgInitialize(XMatrixmul_1d_rev2 *InstancePtr, XMatrixmul_1d_rev2_Config *ConfigPtr);
#else
int XMatrixmul_1d_rev2_Initialize(XMatrixmul_1d_rev2 *InstancePtr, const char* InstanceName);
int XMatrixmul_1d_rev2_Release(XMatrixmul_1d_rev2 *InstancePtr);
#endif


void XMatrixmul_1d_rev2_Set_lm(XMatrixmul_1d_rev2 *InstancePtr, u32 Data);
u32 XMatrixmul_1d_rev2_Get_lm(XMatrixmul_1d_rev2 *InstancePtr);
void XMatrixmul_1d_rev2_Set_ln(XMatrixmul_1d_rev2 *InstancePtr, u32 Data);
u32 XMatrixmul_1d_rev2_Get_ln(XMatrixmul_1d_rev2 *InstancePtr);
void XMatrixmul_1d_rev2_Set_lp(XMatrixmul_1d_rev2 *InstancePtr, u32 Data);
u32 XMatrixmul_1d_rev2_Get_lp(XMatrixmul_1d_rev2 *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
