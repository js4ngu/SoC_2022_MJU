#include <stdio.h>
#include <time.h>

#define lm 7
#define ln 7
#define lp 7

void matrixmul_1D_rev2(/*int lm, int ln, int lp,*/unsigned char Input[256*128], unsigned int AB[128*128]);

int main(){
    int i, j;
    int m=1, n=1, p=1;
    unsigned char Input[256*128];
    unsigned char A[128*128];
    unsigned char B[128*128];
    unsigned int AB[128*128];
    unsigned int AB_EX[128*128];

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

    //Run a software version of the hardware function to validate results
    for (int i = 0; i < m; i++) { //a*b
        for (int j = 0; j < p; j++) {
            AB_EX[128*i+j] = 0;
            for (int k = 0; k < n; k++) {
                AB_EX[128*i+j] += A[128*i+k] * B[128*k+j];
            }
        }
    }
    end = (((double)clock()) / CLOCKS_PER_SEC);

    //Call the hardware function
    matrixmul_1D_rev2(/*lm,ln,lp,*/Input, AB);

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
    printf("SW Run time :%lf\n", (end-start));

    return 0;
}
