int fibon(int x) {
	if (x <= 0 || x <= 1) {
		return x;
	} else {
		return fibon(x - 2) + fibon(x - 1); 
	}
}

void main() {
	int n = 10;
	for (int i = 0; i < n; i++) {
		print("${i} = ${fibon(i)}");
	}
}
