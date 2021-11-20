import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/controller_create.dart';
import 'widget/createqr_body.dart';

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
        body: createqrCodeBody(_conroller),
      ),
    );
  }
}
