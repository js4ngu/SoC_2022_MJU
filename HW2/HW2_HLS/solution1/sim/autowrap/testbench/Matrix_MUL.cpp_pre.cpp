# 1 "C:/Users/SEP16/SoC_2022_MJU/HW2/HW2_HLS/Matrix_MUL.cpp"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "C:/Users/SEP16/SoC_2022_MJU/HW2/HW2_HLS/Matrix_MUL.cpp"
typedef unsigned char u8;
typedef unsigned int u32;

void matrixMul(int lm, int ln, int lp, u8 in[256][128], u32 c[128][128]){

    u8 a[128][128];
 u8 b[128][128];



    for (int i = 0; i < lm; i++) {
        for (int j = 0; j < ln; j++) {
            a[i][j] = in[i][j];
        }
    }
    for (int i = 0; i < ln; i++) {
        for (int j = 0; j < lp; j++) {
            b[i][j] = in[i+128][j];
        }
    }

 for (int i = 0; i < lm; i++) {
  for (int j = 0; j < lp; j++) {
   int sum = 0;
   for (int n = 0; n < ln; n++) {
    sum = sum + a[i][n] * b[n][j];
   }
   c[i][j] = sum;
  }
 }
}
