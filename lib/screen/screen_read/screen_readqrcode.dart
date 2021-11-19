import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qr_code_scanner/controller/conroller_read_qrcode.dart';

class Screenreadqrcode extends StatelessWidget {
  const Screenreadqrcode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ConrollerReadQrcode>(
      init: ConrollerReadQrcode(),
      builder: (_controller) => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text("Scannear Qr Code"),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () => _controller.scannerQRcode(),
              icon: const Icon(Icons.camera),
            ),
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  child: Text(
                    _controller.qrCode,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
