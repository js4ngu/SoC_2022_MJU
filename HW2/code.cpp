#include <stdio.h>
#include <stdlib.h>
typedef unsigned char u8;
typedef unsigned int u32;

#define LM 128
#define LN 128
#define LP 128

u8 arrayA[LM][LN] = {0,};
u8 arrayB[LN][LP] = {0,};
u32 arrayR[LM][LP] = {0, };
int useLM, useLN, useLP;

void init_arrayA();
void init_arrayB();
void print_RawArrayA();
void print_RawArrayB();
void rand_arrayA(int x, int y);
void rand_arrayB(int x, int y);
void print_ArrayA(int x, int y);
void print_ArrayB(int x, int y);
void print_ArrayR(int x, int y);

void mul_Matrix(int ax, int ay, int bx, int by);

int main(){
    int mode;
    init_arrayA();
    init_arrayB();
    printf("Input Lm Ln Lp\n");
    scanf("%d %d %d", &useLM, &useLN, &useLP);
    printf("if you want random set. press 1 key else any key\n");
    scanf("%d", &mode);

    if (mode == 1) {
        rand_arrayA(useLM, useLN);
        rand_arrayB(useLN, useLP);
    }
    else {
        for (int i = 0; i < useLM; i++) {
            printf("Input arrayA %d row\n", i);

            for (int j = 0; j < useLN; j++) {
                scanf("%d", &arrayA[i][j]);
            }
        }
        for (int i = 0; i < useLN; i++) {
            printf("Input arrayB %d row\n", i);
            
            for (int j = 0; j < useLP; j++) {
                scanf("%d", &arrayB[i][j]);
            }
        }
    }
    print_ArrayA(useLM, useLN);
    print_ArrayB(useLM, useLN);
    mul_Matrix(useLM, useLN, useLN, useLP);
    print_ArrayR(useLM, useLM);

    return 0;
}

void init_arrayA() {
    for(int i=0; i < LM; i++){
        for(int j=0; j < LN; j++){
            if(i == j) 
                arrayA[i][j] = 1;
            else 
                arrayA[i][j] = 0;
        }
    }
}

void init_arrayB() {
    for(int i=0; i < LN; i++){
        for(int j=0; j < LP; j++){
            if(i == j)
                arrayB[i][j] = 1;
            else
                arrayB[i][j] = 0;
        }
    }
}

void print_RawArrayA() {
    printf("RAW Array A\n");
    for (int i = 0; i < LM; i++) {
        for (int j = 0; j < LN; j++) {
            printf("%d ", arrayA[i][j]);
        }
        printf("\n");
    }
}

void print_RawArrayB() {
    printf("RAW rray B\n");
    for (int i = 0; i < LN; i++) {
        for (int j = 0; j < LP; j++) {
            printf("%d ", arrayB[i][j]);
        }
        printf("\n");
    }
}

void rand_arrayA(int x, int y){
    for (int i = 0; i < x; i++) {
        for (int j = 0; j < y; j++) {
            arrayA[i][j] = rand()%100;
        }
    }
    
}

void rand_arrayB(int x, int y){
    for (int i = 0; i < x; i++) {
        for (int j = 0; j < y; j++) {
            arrayB[i][j] = rand()%100;
        }
    }
    
}

void print_ArrayA(int x, int y) {
    printf("Array A\n");
    for (int i = 0; i < x; i++) {
        for (int j = 0; j < y; j++) {
            printf("%d ", arrayA[i][j]);
        }
        printf("\n");
    }
}

void print_ArrayB(int x, int y) {
    printf("Array B\n");
    for (int i = 0; i < x; i++) {
        for (int j = 0; j < y; j++) {
            printf("%d ", arrayB[i][j]);
        }
        printf("\n");
    }
}

void print_ArrayR(int x, int y) {
    printf("Result\n");
    for (int i = 0; i < x; i++) {
        for (int j = 0; j < y; j++) {
            printf("%d ", arrayR[i][j]);
        }
        printf("\n");
    }
}

//수정 필요
//mul_Matrix(useLM, useLN, useLN, useLP);
void mul_Matrix(int ax, int ay, int bx, int by){
	int sum;
	for (int r = 0; r < ay; r++) {
		for (int c = 0; c < bx; c++) {
			sum = 0;
			for (int k = 0; k < ax; k++) {
				sum += arrayA[r][k] * arrayB[k][c];
			}
			arrayR[r][c] = sum;
		}
	}
}