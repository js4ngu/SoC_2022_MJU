#define lm 7
#define ln 7
#define lp 7


void matrixmul(/*int lm, int ln, int lp,*/unsigned char Input[256][128], /*unsigned char B[128][128],*/ unsigned int AB[128][128]){ //lm, ln lp는 입력, 결과 행렬은 출력

   int m=1, n=1, p=1;

   //m, n, p 만들기
   for(int i=0; i<lm; i++){
    m *= 2; }

   for(int i=0; i<ln; i++){
    n *= 2;}

   for(int i=0; i<lp; i++){
    p *= 2; }

    // 행렬곱
   for (int i = 0; i < m; i++) { //a*b
      for (int j = 0; j < p; j++) {
         AB[i][j] = 0;
         for (int k = 0; k < n; k++) {
            AB[i][j] += A[i][k] * B[k][j];
         }
      }
   }
}
