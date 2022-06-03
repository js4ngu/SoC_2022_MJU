
#define lm 7
#define ln 7
#define lp 7


void matrixmul_1D_rev2(/*int lm, int ln, int lp,*/unsigned char Input[256*128], unsigned int AB[128*128]){
/*
#pragma HLS INTERFACE axis register both port=Input
#pragma HLS INTERFACE axis register both port=AB
#pragma HLS INTERFACE s_axilite register port=lp
#pragma HLS INTERFACE s_axilite register port=ln
#pragma HLS INTERFACE s_axilite register port=lm
*/
   int m=1, n=1, p=1;
   unsigned char A[128*128] = {0,};
   unsigned char B[128*128] = {0,};

   for (int i = 0; i < lm; i++) {
      for (int j = 0; j < ln; j++) {
         A[128*i+j] = Input[128*i+j];
      }
   }
   for (int i = 0; i < ln; i++) {
      for (int j = 0; j < lp; j++) {
         B[128*i+j] = Input[(i+1)*128+j];
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
            sum = sum + A[128*i+k] * B[128*k+j];
            //sum = sum + A[128*i+k] * B[k][j];
            //AB[i][j] += A[i][k] * B[k][j];
         }
         AB[128*i+j] = sum;
      }
   }
}
