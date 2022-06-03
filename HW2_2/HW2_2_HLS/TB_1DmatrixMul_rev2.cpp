#include <stdio.h>
#include <time.h>

#define lm 5
#define ln 5
#define lp 5

void matrixmul_1D_rev2(/*int lm, int ln, int lp,*/unsigned char Input[64*32], unsigned int AB[32*32]);

int main(){
    int i, j;
    int m=1, n=1, p=1;
    unsigned char Input[64*32];
    unsigned char A[32*32];
    unsigned char B[32*32];
    unsigned int AB[32*32];
    unsigned int AB_EX[32*32];

    printf("HLS Flow with Adder example\n");
    double start, end; // For runtime CHK!
    start = (double)clock() / CLOCKS_PER_SEC;

    for(int i=0; i<lm; i++){
       m *= 2;
    }
    for(int i=0; i<ln; i++){
       n *= 2;
    }
    for(int i=0; i<lp; i++){
       p *= 2;
    }

    //Init Input Data
    for (int i = 0; i < lm; i++) {
        for (int j = 0; j < ln; j++) {
        	Input[32*i+j] = 2;
        }
    }
    for (int i = 32; i < 32+ln; i++) {
        for (int j = 0; j < lp; j++) {
        	Input[32*i+j] = 2;
        }
    }

   //get A,B to Input
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

    //Run a software version of the hardware function to validate results
    for (int i = 0; i < m; i++) { //a*b
        for (int j = 0; j < p; j++) {
            AB_EX[32*i+j] = 0;
            for (int k = 0; k < n; k++) {
                AB_EX[32*i+j] += A[32*i+k] * B[32*k+j];
            }
        }
    }
    end = (((double)clock()) / CLOCKS_PER_SEC);

    //Call the hardware function
    matrixmul_1D_rev2(/*lm,ln,lp,*/Input, AB);

    //Compare results
    for(i=0; i < m; i++){
        for(j=0; j < p; j++){
            if(AB[32*i+j] != AB_EX[32*i+j]){
                //printf("ERROR HW and SW results mismatch  %d  %d\n",AB[i][j], AB_EX[i][j]);
            	printf("[%d][%d] : %d  %d\n",m,p,AB[32*i+j], AB_EX[32*i+j]);
            }  
            else{
                printf("Success HW and SW results match  %d  %d\n",AB[32*i+j], AB_EX[32*i+j]);
            }
        }
    }
    printf("SW Run time :%lf\n", (end-start));

    return 0;
}
