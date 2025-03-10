void hanoi(int piringan, String asal, String tujuan, String bantuan) {
	if (piringan == 1) {
		print("Pindahkan Piringan 1 dari pasak ${asal} ke pasak ${tujuan}");
		return;
	} else {
		hanoi(piringan - 1, asal, bantuan, tujuan);
		print("Pindahkan Piringan ${piringan} dari pasak ${asal} ke pasak ${tujuan}");
		hanoi(piringan - 1, bantuan, tujuan, asal);
	}
}

void main() {
	int jumlahPiringan = 3;
  String asal = "A";
  String tujuan = "C";
  String bantuan = "B";

	hanoi(jumlahPiringan, asal, tujuan, bantuan);

}
