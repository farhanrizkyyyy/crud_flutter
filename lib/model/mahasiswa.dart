class Mahasiswa {
  int nim;
  String nama;

  Mahasiswa({required this.nim, required this.nama});
}

List<Mahasiswa> dataMhs = [
  for (int i = 0; i < 5; i++) Mahasiswa(nim: 123, nama: "Farhan")
];

void deleteMhs(int index) {
  dataMhs.removeAt(index);
}

void addMhs(int nim, String nama) {
  dataMhs.add(Mahasiswa(nim: nim, nama: nama));
}