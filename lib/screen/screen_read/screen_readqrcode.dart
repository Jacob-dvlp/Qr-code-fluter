import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/conroller_read_qrcode.dart';
import 'widget/readqrcode_body.dart';

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
          body: readqrCode(_controller)),
    );
  }
}
