import 'package:flutter/material.dart';

class Elevatedbuttonwidget extends StatelessWidget {
  final Function? onPressed;
  final String? labelname;
  const Elevatedbuttonwidget({Key? key, this.onPressed, this.labelname})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      width: 170,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(primary: Colors.black),
        onPressed: () => onPressed,
        child: Text("$labelname"),
      ),
    );
  }
}
