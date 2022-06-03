
#define lm 4
#define ln 4
#define lp 4


void matrixmul_1D_rev2(/*int lm, int ln, int lp,*/unsigned char Input[64*32], unsigned int AB[32*32]){
/*
#pragma HLS INTERFACE axis register both port=Input
#pragma HLS INTERFACE axis register both port=AB
#pragma HLS INTERFACE s_axilite port=lm
#pragma HLS INTERFACE s_axilite port=ln
#pragma HLS INTERFACE s_axilite port=lp
*/
   int m=1, n=1, p=1;
   unsigned char A[32*32] = {0,};
   unsigned char B[32*32] = {0,};

   for (int i = 0; i < lm; i++) {
      for (int j = 0; j < ln; j++) {
         A[32*i+j] = Input[32*i+j];
      }
   }
   for (int i = 0; i < ln; i++) {
      for (int j = 0; j < lp; j++) {
         B[32*i+j] = Input[(i+1)*32+j];
      }
   }
   
   //Get M,N,P
   for(int i=0; i<lm; i++){
      m *= 2;
   }

   for(int i=0; i<ln; i++){
      n *= 2;
   }

   for(int i=0; i<lp; i++){
      p *= 2;
   }

    // Matrix MUL
   for (int i = 0; i < m; i++) { //a*b
      for (int j = 0; j < p; j++) {
         //AB[128*i+j] = 0;
         unsigned sum = 0;
         for (int k = 0; k < n; k++) {
            sum = sum + A[32*i+k] * B[32*k+j];
            //sum = sum + A[128*i+k] * B[k][j];
            //AB[i][j] += A[i][k] * B[k][j];
         }
         AB[32*i+j] = sum;
      }
   }
}
