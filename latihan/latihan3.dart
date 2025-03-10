import 'dart:io';

List<int> data = [3, 6, 9, 11, 15, 30, 36, 42, 66, 87, 91, 100, 110];

int binary(int target, int awal, int akhir) {
  int nilaiTengah = awal + (akhir - awal) ~/ 2;
  if (awal > akhir) {
    return -1;
  }
  if (data[nilaiTengah] == target) {
    return nilaiTengah;
  }
  if (data[nilaiTengah] > target) {
    return binary(target, awal, nilaiTengah - 1);
  }
  return binary(target, nilaiTengah + 1, akhir);
}

void main() {
  print("Data : ${data}");
  stdout.write("Data yang dicari : ");
  int target = int.parse(stdin.readLineSync()!);
  if (binary(target, 0, data.length - 1) != -1) {
    print("Data ${target} berada pada indek ke - ${binary(target, 0, data.length - 1)}");
  } else {
    print("Data tidak dapat ditemukan");
  }
}
