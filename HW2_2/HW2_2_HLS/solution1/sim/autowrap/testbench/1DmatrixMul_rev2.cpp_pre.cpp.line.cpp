#pragma line 1 "C:/Users/SEP16/SoC_2022_MJU/HW2_2/HW2_2_HLS/1DmatrixMul_rev2.cpp"
#pragma line 1 "<built-in>"
#pragma line 1 "<command-line>"
#pragma line 1 "C:/Users/SEP16/SoC_2022_MJU/HW2_2/HW2_2_HLS/1DmatrixMul_rev2.cpp"
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
void matrixmul_1D_rev2( unsigned char Input[64*32], unsigned int AB[32*32]){
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
   int m=1, n=1, p=1;
   unsigned char A[32*32] = {0,};
   unsigned char B[32*32] = {0,};
#pragma empty_line
   for (int i = 0; i < 4; i++) {
      for (int j = 0; j < 4; j++) {
         A[32*i+j] = Input[32*i+j];
      }
   }
   for (int i = 0; i < 4; i++) {
      for (int j = 0; j < 4; j++) {
         B[32*i+j] = Input[(i+1)*32+j];
      }
   }
#pragma empty_line
#pragma empty_line
   for(int i=0; i<4; i++){
      m *= 2;
   }
#pragma empty_line
   for(int i=0; i<4; i++){
      n *= 2;
   }
#pragma empty_line
   for(int i=0; i<4; i++){
      p *= 2;
   }
#pragma empty_line
#pragma empty_line
   for (int i = 0; i < m; i++) {
      for (int j = 0; j < p; j++) {
#pragma empty_line
         unsigned sum = 0;
         for (int k = 0; k < n; k++) {
            sum = sum + A[32*i+k] * B[32*k+j];
#pragma empty_line
#pragma empty_line
         }
         AB[32*i+j] = sum;
      }
   }
}
