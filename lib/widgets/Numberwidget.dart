import 'package:connectivity/ResponsiveItems/Responsivefunctions.dart';
import 'package:flutter/material.dart';

class Number extends StatelessWidget {
  const Number({super.key, required this.number,required this.onTap, this.color});
  final String number;
  final void Function() onTap;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: CircleAvatar(
        backgroundColor: const Color.fromARGB(255, 59, 59, 59),
        radius: getResponsiveItem(context, itemsize: 40),
        child: Text(
          number,
          style: TextStyle(
              fontSize: getResponsiveItem(context, itemsize: 25),
              color: Colors.white),
        ),
      ),
    );
  }
}
