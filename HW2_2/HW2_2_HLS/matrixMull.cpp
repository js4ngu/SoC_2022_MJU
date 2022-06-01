/*
#define lm 7
#define ln 7
#define lp 7
*/

void matrixmul(int lm, int ln, int lp,unsigned char Input[256][128], unsigned int AB[128][128]){
#pragma HLS INTERFACE axis register both port=Input
#pragma HLS INTERFACE axis register both port=AB
#pragma HLS INTERFACE s_axilite register port=lp
#pragma HLS INTERFACE s_axilite register port=ln
#pragma HLS INTERFACE s_axilite register port=lm

   int m=1, n=1, p=1;
   unsigned char A[128][128];
   unsigned char B[128][128];

   for (int i = 0; i < lm; i++) {
      for (int j = 0; j < ln; j++) {
         A[i][j] = Input[i][j];
      }
   }
   for (int i = 0; i < ln; i++) {
      for (int j = 0; j < lp; j++) {
         B[i][j] = Input[i+128][j];
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
         AB[i][j] = 0;
         unsigned sum = 0;
         for (int k = 0; k < n; k++) {
            sum = sum + A[i][k] * B[k][j];
            //AB[i][j] += A[i][k] * B[k][j];
         }
         AB[i][j] = sum;
      }
   }
}
