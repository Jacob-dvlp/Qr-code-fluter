import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ControllerCreate extends GetxController {
  final createqrcode = TextEditingController();
  void createQrCode() {
    update();
    createqrcode.text.obs;
  }
}
