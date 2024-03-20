import 'dart:ffi';

import 'package:connectivity/ResponsiveItems/Responsivefunctions.dart';
import 'package:flutter/material.dart';

class Symboll extends StatelessWidget {
  const Symboll(
      {super.key, required this.char, required this.onTap, this.color});
  final String char;
  final void Function() onTap;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: CircleAvatar(
        backgroundColor: Color.fromARGB(255, 59, 59, 59),
        radius: getResponsiveItem(context, itemsize: 40),
        child: Text(char.toString(),
            style: TextStyle(
                fontSize: getResponsiveItem(context, itemsize: 25),
                color: color ?? Colors.white),
      ),)
    );
  }
}
