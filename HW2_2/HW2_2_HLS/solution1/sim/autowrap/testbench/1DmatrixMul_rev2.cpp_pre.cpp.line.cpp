#pragma line 1 "C:/SoC_2022_MJU/HW2_2/HW2_2_HLS/1DmatrixMul_rev2.cpp"
#pragma line 1 "<built-in>"
#pragma line 1 "<command-line>"
#pragma line 1 "C:/SoC_2022_MJU/HW2_2/HW2_2_HLS/1DmatrixMul_rev2.cpp"
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
void matrixmul_1D_rev2( unsigned char Input[256*128], unsigned int AB[128*128]){
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
   int m=1, n=1, p=1;
   unsigned char A[128*128] = {0,};
   unsigned char B[128*128] = {0,};
#pragma empty_line
   for (int i = 0; i < 3; i++) {
      for (int j = 0; j < 3; j++) {
         A[128*i+j] = Input[128*i+j];
      }
   }
   for (int i = 0; i < 3; i++) {
      for (int j = 0; j < 3; j++) {
         B[128*i+j] = Input[(i+1)*128+j];
      }
   }
#pragma empty_line
#pragma empty_line
   for(int i=0; i<3; i++){
      m *= 2;
   }
#pragma empty_line
   for(int i=0; i<3; i++){
      n *= 2;
   }
#pragma empty_line
   for(int i=0; i<3; i++){
      p *= 2;
   }
#pragma empty_line
#pragma empty_line
   for (int i = 0; i < m; i++) {
      for (int j = 0; j < p; j++) {
#pragma empty_line
         unsigned sum = 0;
         for (int k = 0; k < n; k++) {
            sum = sum + A[128*i+k] * B[128*k+j];
#pragma empty_line
#pragma empty_line
         }
         AB[128*i+j] = sum;
      }
   }
}
