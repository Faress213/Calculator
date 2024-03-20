import 'dart:ffi';

import 'package:connectivity/ResponsiveItems/Responsivefunctions.dart';
import 'package:flutter/material.dart';

class PrivateSymbol extends StatelessWidget {
  const PrivateSymbol({super.key, required this.onTap});
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: CircleAvatar(
          backgroundColor: const Color.fromARGB(255, 59, 59, 59),
          radius: getResponsiveItem(context, itemsize: 40),
          child: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          )),
    );
  }
}
