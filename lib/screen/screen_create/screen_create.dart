import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qr_code_scanner/controller/controller_create.dart';
import 'package:qr_code_scanner/routes/router_name_pages.dart';

class ScreenCreate extends StatelessWidget {
  const ScreenCreate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ControllerCreate>(
        init: ControllerCreate(),
        builder: (_conroller) => Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.black,
                title: const Text("Qr Code"),
                centerTitle: true,
              ),
              body: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 80,
                      ),
                      BarcodeWidget(
                        data: _conroller.createqrcode.text,
                        barcode: Barcode.qrCode(),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Form(
                        child: Column(
                          children: [
                            TextField(
                              controller: _conroller.createqrcode,
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                label: Text("Cria o seu Qr code"),
                              ),
                            ),
                            const SizedBox(
                              height: 45,
                            ),
                            SizedBox(
                              height: 45,
                              width: 170,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.black),
                                onPressed: () => _conroller.createQrCode(),
                                child: const Text("Gerar Qr code"),
                              ),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            SizedBox(
                              height: 45,
                              width: 170,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.black),
                                onPressed: () => Get.toNamed(AppPagesName.read),
                                child: const Text("Scannear Qr code"),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ));
  }
}
