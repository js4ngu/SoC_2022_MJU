#include <stdio.h>
//#include <time.h>

#define lm 3
#define ln 3
#define lp 3

void matrixmul_1D_rev2(/*int lm, int ln, int lp,*/unsigned char Input_Origin[256*128], unsigned int AB[128*128]);

int main(){
    int i, j;
    int m=1, n=1, p=1;
    unsigned char Input_Origin[256 * 128] = {1,};

    // variable for IP
    unsigned int AB[128*128];
   
    //variable for C-SIM
    unsigned char Input_SW[256][128];
    unsigned char A_SW[128][128];
    unsigned char B_SW[128][128];
    unsigned int AB_2D_SW[128][128];
    unsigned int AB_SW[128*128];

/*
    printf("HLS Flow with Adder example\n");
    double start, end; // For runtime CHK!
    start = (double)clock() / CLOCKS_PER_SEC;
*/  
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

   for (int i = 0; i < 256; i++) {
      for (int j = 0; j < 128; j++){
         Input_SW[i][j] = Input_Origin[256*i + j];
      }
   }

   for (int i = 0; i < lm; i++) {
      for (int j = 0; j < ln; j++) {
         A_SW[i][j] = Input_SW[i][j];
      }
   }
   for (int i = 0; i < ln; i++) {
      for (int j = 0; j < lp; j++) {
         B_SW[i][j] = Input_SW[i+128][j];
      }
   }
   
    // Matrix MUL
   for (int i = 0; i < m; i++) { //a*b
      for (int j = 0; j < p; j++) {
         AB_2D_SW[i][j] = 0;
         unsigned sum = 0;
         for (int k = 0; k < n; k++) {
            sum = sum + A_SW[i][k] * B_SW[k][j];
            //AB[i][j] += A[i][k] * B[k][j];
         }
         AB_2D_SW[i][j] = sum;
      }
   }
   
   //Matrix Murge
   for (int i = 0; i < 128; i++) {
      for (int j = 0; j < 128; j++){
         AB_SW[i*128 + j] = AB_2D_SW[i][j];
      }
   }
    //end = (((double)clock()) / CLOCKS_PER_SEC);

    //Call the hardware function
    matrixmul_1D_rev2(/*lm,ln,lp,*/Input_Origin, AB);

    //Compare results
    for(i=0; i < m; i++){
        for(j=0; j < p; j++){
            if(AB[i*128+j] != AB_SW[i*128+j]){
                //printf("ERROR HW and SW results mismatch  %d  %d\n",AB_EX[i][j], AB_EX[i][j]);
            	printf("[%d][%d] : %d  %d\n",m,p,AB[i*128 + j], AB_SW[i*128 + j]);
            }  
            else{
                printf("Success HW and SW results match  %d  %d\n",AB[i*128 + j], AB_SW[i*128 + j]);
            }
        }
    }
    /*
    printf("SW Run time :%lf\n", (end-start));
	*/
    return 0;
}
