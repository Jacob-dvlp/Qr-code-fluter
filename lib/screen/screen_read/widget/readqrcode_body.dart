import 'package:flutter/material.dart';

Widget readqrCode(_controller) {
  return Column(
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
  );
}
