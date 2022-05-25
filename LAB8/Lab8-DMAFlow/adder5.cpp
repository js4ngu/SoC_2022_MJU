void adder5(int A[50], int B[50])
{
#pragma HLS INTERFACE axis register both port=B
#pragma HLS INTERFACE axis register both port=A
  int i;

  for(i = 0; i < 50; i++){
    B[i] = A[i] + 5;
  }
}
