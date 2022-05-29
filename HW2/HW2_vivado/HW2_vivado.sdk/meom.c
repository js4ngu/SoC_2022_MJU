#include "xparameters.h"
#include "xtmrctr.h"
#include "xil_printf.h"

#define TMRCTR_DEVICE_ID	XPAR_TMRCTR_0_DEVICE_ID
#define TIMER_COUNTER_0	 0

int TmrCtr_init(u16 DeviceId, u8 TmrCtrNumber);
XTmrCtr TimerCounter; /* The instance of the Tmrctr Device */

int TmrCtr_init(u16 DeviceId, u8 TmrCtrNumber)
{
	int Status;
	u32 Value1;
	u32 Value2;
	XTmrCtr *TmrCtrInstancePtr = &TimerCounter;

	/*
	 * Initialize the timer counter so that it's ready to use,
	 * specify the device ID that is generated in xparameters.h
	 */
	Status = XTmrCtr_Initialize(TmrCtrInstancePtr, DeviceId);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/*
	 * Perform a self-test to ensure that the hardware was built
	 * correctly, use the 1st timer in the device (0)
	 */
	Status = XTmrCtr_SelfTest(TmrCtrInstancePtr, TmrCtrNumber);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}


	/*
	 * Enable the Autoreload mode of the timer counters.
	 */
	XTmrCtr_SetOptions(TmrCtrInstancePtr, TmrCtrNumber,
				XTC_AUTO_RELOAD_OPTION);

	/*
	 * Get a snapshot of the timer counter value before it's started
	 * to compare against later
	 */
	//Value1 = XTmrCtr_GetValue(TmrCtrInstancePtr, TmrCtrNumber);

	return Value1;
}

XTmrCtr_Start(TmrCtrInstancePtr, TmrCtrNumber);

Value = XTmrCtr_GetValue(TmrCtrInstancePtr, TmrCtrNumber);

XTmrCtr_SetOptions(TmrCtrInstancePtr, TmrCtrNumber, 0);
