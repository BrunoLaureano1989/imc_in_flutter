import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final String texto;
  const TextWidget({super.key, required this.texto});

  @override
  Widget build(BuildContext context) {
    return Text(texto,
        style: const TextStyle(
            fontSize: 16, fontWeight: FontWeight.w700, color: Colors.black87));

  }
}
