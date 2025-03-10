import 'dart:io';

int pascal(int row, int col) {
  if (col == 0 || col == row) {
    return 1;
  }
  return pascal(row - 1, col - 1) + pascal(row - 1, col);
}

void main() {
  int n = 5;

  for (int i = 1; i <= n; i++) {
    stdout.write('${ ' ' * (n - i)}');
    for (int j = 0; j <= i; j++) {
      stdout.write('${pascal(i, j)} ');
    }
    print(" ");
  }
}