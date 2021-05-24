// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xadder5.h"

extern XAdder5_Config XAdder5_ConfigTable[];

XAdder5_Config *XAdder5_LookupConfig(u16 DeviceId) {
	XAdder5_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XADDER5_NUM_INSTANCES; Index++) {
		if (XAdder5_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XAdder5_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XAdder5_Initialize(XAdder5 *InstancePtr, u16 DeviceId) {
	XAdder5_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XAdder5_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XAdder5_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

