#include <stdio.h>
#include <stdlib.h>
#include <time.h>

#define LM 1
#define LN 3
#define LP 2

void matrixMul(int lm, int ln, int lp, int in[256][128]);

int main() {
    int input[256][128] = {0,};
	int lm = LM;
    int ln = LN;
    int lp = LP;

    // Runtime check
    double start, end;
    start = (double)clock() / CLOCKS_PER_SEC;

    //input 초기화
    srand(time(NULL));
    for (int i = 0; i < lm; i++) {
        for (int j = 0; j < ln; j++) {
            input[i][j] = rand()%20;
        }
    }
    for (int i = 128; i < 128+lp; i++) {
        for (int j = 0; j < lm; j++) {
            input[i][j] = rand()%20;
        }
    }

    /*
    //inut A print
    //첫번째 배열 : lm * ln
    printf("---A---\n\n");
    for (int i = 0; i < lm; i++) {
        for (int j = 0; j < ln; j++) {
            printf("%d ", input[i][j]);
        }
        printf("\n");
    }
    //inut B print
    //두번째 배열 : ln * lp
    printf("\n");
    printf("---B---\n\n");
    for (int i = 128; i < 128+ln; i++) {
        for (int j = 0; j < lp; j++) {
            printf("%d ", input[i][j]);
        }
        printf("\n");
    }
    printf("\n");
    */
    //printf("---Result---\n\n");
    
    matrixMul(LM, LN, LP, input);
    end = (((double)clock()) / CLOCKS_PER_SEC);
    printf("Run Time : %lf\n", (end-start));
}

void matrixMul(int lm, int ln, int lp, int in[256][128]){
    int a[128][128]; //첫번째 배열 : lm * ln
	int b[128][128]; //두번째 배열 : ln * lp
	int c[128][128]; //곱한 후의 배열 : lm * lp
    //배열 짜르기
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
    // 행렬곱
	for (int i = 0; i < lm; i++) { //a*b
		for (int j = 0; j < lp; j++) {
			int sum = 0;
			for (int n = 0; n < ln; n++) {
				sum = sum + a[i][n] * b[n][j];
			}
			c[i][j] = sum;
		}
	}
    //행렬 출력
	for (int i = 0; i < lm; i++) {//lm
		for (int n = 0; n < lp; n++) {//lp
			printf("%d ", c[i][n]);
		}
		printf("\n");
	}   
}