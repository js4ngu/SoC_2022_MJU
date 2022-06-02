#pragma line 1 "C:/Users/SEP16/SoC_2022_MJU/HW2_2/HW2_2_HLS/matrixMull.cpp"
#pragma line 1 "<built-in>"
#pragma line 1 "<command-line>"
#pragma line 1 "C:/Users/SEP16/SoC_2022_MJU/HW2_2/HW2_2_HLS/matrixMull.cpp"
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
void matrixmul( unsigned char Input[256][128], unsigned int AB[128][128]){
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
   int m=1, n=1, p=1;
   unsigned char A[128][128];
   unsigned char B[128][128];
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
         AB[i][j] = 0;
         unsigned sum = 0;
         for (int k = 0; k < n; k++) {
            sum = sum + A[i][k] * B[k][j];
#pragma empty_line
         }
         AB[i][j] = sum;
      }
   }
}