#include <stdio.h>
#define lm 3
#define ln 3
#define lp 3

void 1Dmatrixmul(/*int lm, int ln, int lp,*/unsigned char Input[256*128], unsigned int AB_EX[128*128]);

int main(){
    int i, j;
    int m=1, n=1, p=1;
    unsigned char Input_Origin[256 * 128];
    unsigned char Input_EX[256][128];
    unsigned char Input[256][128];
    unsigned char A[128][128];
    unsigned char B[128][128];
    unsigned int AB_EX[128*128];
    unsigned int 2dAB[128][128];

    for(int i=0; i<lm; i++){
       m *= 2;
    }
    for(int i=0; i<ln; i++){
       n *= 2;
    }
    for(int i=0; i<lp; i++){
       p *= 2;
    }

    printf("HLS Flow with Adder example\n");

   //Init Input Data
   Input_Origin[256*128] = {2,};

   //Split Input origin
   for (int i = 0; i < 256; i++) {
      for (int j = 0; j < 128; j++){
         Input[i][j] = Input_orign[256*i + j];
      }
   }

   //get A,B to Input
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

    //Call the hardware function
    1Dmatrixmul(/*lm,ln,lp,*/Input_Origin, AB_EX);

    //Run a software version of the hardware function to validate results
    for (int i = 0; i < m; i++) { //a*b
        for (int j = 0; j < p; j++) {
            2dAB[i][j] = 0;
            for (int k = 0; k < n; k++) {
                2dAB[i][j] += A[i][k] * B[k][j];
            }
        }
    }

    //Matrix Murge
   for (int i = 0; i < 128; i++) {
      for (int j = 0; j < 128; j++){
         AB_EX[i*128 + j] = 2dAB[i][j];
      }
   }

    //Compare results
    for(i=0; i < m; i++){
        for(j=0; j < p; j++){
            if(AB[i*128+j] != AB_EX[i*128+j]){
                //printf("ERROR HW and SW results mismatch  %d  %d\n",AB_EX[i][j], AB_EX[i][j]);
            	printf("[%d][%d] : %d  %d\n",m,p,AB[i*128 + j], AB_EX[i*128 + j]);
            }  
            else{
                printf("Success HW and SW results match  %d  %d\n",AB_EX[i*128 + j], AB_EX[i*128 + j]);
            }
        }
    }
    return 0;
}
