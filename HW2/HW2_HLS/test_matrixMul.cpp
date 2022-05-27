#include <stdio.h>
#include <stdlib.h>
#include <time.h>

typedef unsigned char u8;
typedef unsigned int u32;

#define LM 1
#define LN 3
#define LP 2

void matrixMul(int lm, int ln, int lp, u8 in[256][128], u32 c[128][128]);

int main() {
    u8 input[256][128] = {0,};
    u32 out[128][128] = {0,};
	int lm = LM;
    int ln = LN;
    int lp = LP;

    //input init
    srand(time(NULL));
    for (int i = 0; i < lm; i++) {
        for (int j = 0; j < ln; j++) {
            input[i][j] = rand()%20;
        }
    }
    for (int i = 128; i < 128+ln; i++) {
        for (int j = 0; j < lp; j++) {
            input[i][j] = rand()%20;
        }
    }

    //inut A print
    printf("---A---\n\n");
    for (int i = 0; i < lm; i++) {
        for (int j = 0; j < ln; j++) {
            printf("%d ", input[i][j]);
        }
        printf("\n");
    }
    
    //inut B print
    printf("\n");
    printf("---B---\n\n");
    for (int i = 128; i < 128+ln; i++) {
        for (int j = 0; j < lp; j++) {
            printf("%d ", input[i][j]);
        }
        printf("\n");
    }
    printf("\n");
    
    printf("---Result---\n\n");

    matrixMul(LM, LN, LP, input, out);
	for (int i = 0; i < lm; i++) {//lm
		for (int n = 0; n < lp; n++) {//lp
			printf("%d ", out[i][n]);
		}
		printf("\n");
	}  
}
