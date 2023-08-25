

import 'package:flutter/material.dart';

class imcCampo extends StatelessWidget {
  const imcCampo({
    Key? key,
    required this.labelText,
    required this.controller,
  }) : super(key: key);

  final String labelText;
  final TextEditingController controller;
 

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        labelText: labelText,
        border: const OutlineInputBorder(),
      ),
    );
  }
}