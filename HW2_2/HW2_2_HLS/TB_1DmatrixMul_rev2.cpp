#include <stdio.h>
#define lm 3
#define ln 3
#define lp 3

void matrixmul(/*int lm, int ln, int lp,*/unsigned char Input[256*128], unsigned int AB[128*128]);

int main(){
    int i, j;
    int m=1, n=1, p=1;
    unsigned char Input[256*128];
    unsigned char A[128*128];
    unsigned char B[128*128];
    unsigned int AB[128*128];
    unsigned int AB_EX[128*128];

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
    for (int i = 0; i < lm; i++) {
        for (int j = 0; j < ln; j++) {
        	Input[128*i+j] = 2;
        }
    }
    for (int i = 128; i < 128+ln; i++) {
        for (int j = 0; j < lp; j++) {
        	Input[128*i+j] = 2;
        }
    }

   //get A,B to Input
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

    //Call the hardware function
    matrixmul(/*lm,ln,lp,*/Input, AB);

    //Run a software version of the hardware function to validate results
    for (int i = 0; i < m; i++) { //a*b
        for (int j = 0; j < p; j++) {
            AB_EX[128*i+j] = 0;
            for (int k = 0; k < n; k++) {
                AB_EX[128*i+j] += A[128*i+k] * B[128*k+j];
            }
        }
    }

    //Compare results
    for(i=0; i < m; i++){
        for(j=0; j < p; j++){
            if(AB[128*i+j] != AB_EX[128*i+j]){
                //printf("ERROR HW and SW results mismatch  %d  %d\n",AB[i][j], AB_EX[i][j]);
            	printf("[%d][%d] : %d  %d\n",m,p,AB[128*i+j], AB_EX[128*i+j]);
            }  
            else{
                printf("Success HW and SW results match  %d  %d\n",AB[128*i+j], AB_EX[128*i+j]);
            }
        }
    }
    return 0;
}
