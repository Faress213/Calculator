import 'package:connectivity/Changing%20State/CalculatorItems.dart';
import 'package:connectivity/widgets/Numberwidget.dart';
import 'package:connectivity/widgets/symbolwidget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FourthRow extends StatelessWidget {
  const FourthRow({
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
              number: value.Num1.toString(),
              color: Colors.blue,
              onTap: () => value.EnterNumber(value.Num1.toString()),

            ),
            Number(
              number: value.Num2.toString(),
              color: Colors.blue,
               onTap: () => value.EnterNumber(value.Num2.toString()),
            ),
            Number(
              number: value.Num3.toString(),
              color: Colors.blue,
               onTap: () => value.EnterNumber(value.Num3.toString()),
            ),
             Symboll(
              color: Colors.blue,
              char: '+',
               onTap: () => value.EnterOperation('+'),
            ),
          ],
        ),
      ),
    );
  }
}