import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:get/get.dart';

class ConrollerReadQrcode extends GetxController {
  String qrCode = "Leitor de Qr Code";
  Future<void> scannerQRcode() async {
    try {
      final qrCode = await FlutterBarcodeScanner.scanBarcode(
          '#ff6666', 'Cancelar', true, ScanMode.QR);
      this.qrCode = qrCode;
      update();
    } catch (e) {
      qrCode = 'Erro ao ler o qrCode';
    }
  }
}
