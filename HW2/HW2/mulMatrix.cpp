#include <stdio.h>
typedef unsigned char u8;
typedef unsigned int u32;

#define LM 128
#define LN 128
#define LP 128

void mul_Matrix(int useLM, int useLN, int useLP, u8 arrayA[LM][LN], u8 arrayB[LN][LP], u32 arrayR[LM][LP]){
	int sum;
	for (int r = 0; r < useLN; r++) {
		for (int c = 0; c < useLN; c++) {
			sum = 0;
			for (int k = 0; k < useLM; k++) {
				sum += arrayA[r][k] * arrayB[k][c];
			}
			arrayR[r][c] = sum;
		}
	}
}