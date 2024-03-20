import 'package:connectivity/Changing%20State/CalculatorItems.dart';
import 'package:connectivity/widgets/Numberwidget.dart';
import 'package:connectivity/widgets/symbolwidget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ThirdRow extends StatelessWidget {
  const ThirdRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<CalculatorItems>(
      builder: (context, value, _) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Number(
              number: value.Num4.toString(),
              color: Colors.blue,
              onTap: () {
                value.EnterNumber(value.Num4.toString());
              },
            ),
            Number(
              number: value.Num5.toString(),
              color: Colors.blue,
              onTap: () {
                value.EnterNumber(value.Num5.toString());
              },
            ),
            Number(
              number: value.Num6.toString(),
              color: Colors.blue,
              onTap: () {
                value.EnterNumber(value.Num6.toString());
              },
            ),
            Symboll(
              color: Colors.blue,
              char: '-',
              onTap:(() => value.EnterOperation('-'))
            ),
          ],
        ),
      ),
    );
  }
}
