#include <stdio.h>

#define BLOCKS_NUM 1
#define THREADS_PER_BLOCK 4

__global__ void hello_from_gpu() {
    int thread_id = threadIdx.x;
    printf("Thread %d!\n", thread_id);
}

int main() {
    hello_from_gpu<<<BLOCKS_NUM, THREADS_PER_BLOCK>>>();
    cudaDeviceSynchronize();
    return 0;
}
