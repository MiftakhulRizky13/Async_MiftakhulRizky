//Miftakhul Rizky
void main() async {
  print(
      "=======================================\n    Program Ketersidaan Kamar Kos\n=======================================");
  try {
    //input Kos yang Kosong
    var hasil = await kos(5);
    print(
        "=======================================\n              Status Kos             ");
    print(hasil);
  } catch (error) {
    print(
        "=======================================\n              Status Kos             ");
    print(error);
  }

  try {
    var dataKos = await CreateOrderMessage();
    print(dataKos);
    print(
        "\n           Terima Kasih \n=======================================");
  } catch (error) {
    print(error);
    print(
        "\n           Terima Kasih \n=======================================");
  }
}

Future<String> kos(int KamarKosong) {
  //input jumlat kamar kos
  int TotKos = 15;
  return Future.delayed(Duration(seconds: 1), () {
    if (TotKos > KamarKosong) {
      return "Jumlah Kamar Kos yang kosong: $KamarKosong";
    } else {
      throw "Maaf kapasitas Kos sudah penuh";
    }
  });
}

Future<String> CreateOrderMessage() async {
  //input kos yang sudah ditempati
  int KosOcc = 10;
  return "Jumlah Kamar kos yang sudah ditempati : $KosOcc";
}
