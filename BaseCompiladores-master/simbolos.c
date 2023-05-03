#include <stdio.h>

int calcular (int a, int b);
int sinUsar(int, int);

int main() {

    int v[2];
    int x = 5, y = 6, z;

    v[5000] = x;

    z = calcular(x, y);

    return 0;
}

int calcular(int a, int b) {

    int i = 0; 

    for (i = 0; i < b; i++) {
        a += b;
    }

    return a;
}