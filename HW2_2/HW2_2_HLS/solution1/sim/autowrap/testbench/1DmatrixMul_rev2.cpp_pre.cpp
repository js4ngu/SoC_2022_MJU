# 1 "C:/SoC_2022_MJU/HW2_2/HW2_2_HLS/1DmatrixMul_rev2.cpp"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "C:/SoC_2022_MJU/HW2_2/HW2_2_HLS/1DmatrixMul_rev2.cpp"






void matrixmul_1D_rev2( unsigned char Input[256*128], unsigned int AB[128*128]){







   int m=1, n=1, p=1;
   unsigned char A[128*128] = {0,};
   unsigned char B[128*128] = {0,};

   for (int i = 0; i < 7; i++) {
      for (int j = 0; j < 7; j++) {
         A[128*i+j] = Input[128*i+j];
      }
   }
   for (int i = 0; i < 7; i++) {
      for (int j = 0; j < 7; j++) {
         B[128*i+j] = Input[(i+1)*128+j];
      }
   }


   for(int i=0; i<7; i++){
      m *= 2;
   }

   for(int i=0; i<7; i++){
      n *= 2;
   }

   for(int i=0; i<7; i++){
      p *= 2;
   }


   for (int i = 0; i < m; i++) {
      for (int j = 0; j < p; j++) {

         unsigned sum = 0;
         for (int k = 0; k < n; k++) {
            sum = sum + A[128*i+k] * B[128*k+j];


         }
         AB[128*i+j] = sum;
      }
   }
}
