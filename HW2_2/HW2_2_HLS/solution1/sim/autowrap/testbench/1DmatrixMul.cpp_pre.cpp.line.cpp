#pragma line 1 "C:/SoC_2022_MJU/HW2_2/HW2_2_HLS/1DmatrixMul.cpp"
#pragma line 1 "<built-in>"
#pragma line 1 "<command-line>"
#pragma line 1 "C:/SoC_2022_MJU/HW2_2/HW2_2_HLS/1DmatrixMul.cpp"
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
void matrixmul_1D( unsigned char Input_orign[256*128], unsigned int AB[128*128]){
   int m=1, n=1, p=1;
   unsigned char Input[256][128];
   unsigned char A[128][128];
   unsigned char B[128][128];
   unsigned int AB_2D[128][128];
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
   for (int i = 0; i < 256; i++) {
      for (int j = 0; j < 128; j++){
         Input[i][j] = Input_orign[256*i + j];
      }
   }
#pragma empty_line
   for (int i = 0; i < 3; i++) {
      for (int j = 0; j < 3; j++) {
         A[i][j] = Input[i][j];
      }
   }
   for (int i = 0; i < 3; i++) {
      for (int j = 0; j < 3; j++) {
         B[i][j] = Input[i+128][j];
      }
   }
#pragma empty_line
#pragma empty_line
   for (int i = 0; i < m; i++) {
      for (int j = 0; j < p; j++) {
         AB_2D[i][j] = 0;
         unsigned sum = 0;
         for (int k = 0; k < n; k++) {
            sum = sum + A[i][k] * B[k][j];
#pragma empty_line
         }
         AB_2D[i][j] = sum;
      }
   }
#pragma empty_line
#pragma empty_line
   for (int i = 0; i < 128; i++) {
      for (int j = 0; j < 128; j++){
         AB[i*128 + j] = AB_2D[i][j];
      }
   }
}