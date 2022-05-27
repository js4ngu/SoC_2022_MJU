void matrixMul(int lm, int ln, int lp, int in[256][128]){
    int a[128][128]; //1st array : lm * ln
	int b[128][128]; //2nd array : ln * lp
	int c[128][128]; //output array : lm * lp

    // Split input array
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
    // Martix mul
	for (int i = 0; i < lm; i++) { //a*b
		for (int j = 0; j < lp; j++) {
			int sum = 0;
			for (int n = 0; n < ln; n++) {
				sum = sum + a[i][n] * b[n][j];
			}
			c[i][j] = sum;
		}
	}
}
