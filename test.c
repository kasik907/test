#include <stdio.h>

int main() {
    long int a, b, result;
    printf("Enter two long integer numbers: ");
    scanf("%ld %ld", &a, &b);
    printf("Before: a = %ld b = %ld\n", a, b);

    result = (a++) - b;
    printf("((a++) - b) = %ld\n", result);
    printf("After: a = %ld b = %ld\n", a, b);
    return 0;
}
