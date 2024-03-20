import 'package:connectivity/Calculator.dart';
import 'package:connectivity/Changing%20State/CalculatorItems.dart';
import 'package:connectivity/widgets/Numberwidget.dart';
import 'package:connectivity/widgets/symbolwidget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SecondRow extends StatelessWidget {
  const SecondRow({
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
              number: value.Num7.toString(),
              color: Colors.blue,
               onTap: () => value.EnterNumber(value.Num7.toString()),
            ),
            Number(
              number: value.Num8.toString(),
              color: Colors.blue,
               onTap: () => value.EnterNumber(value.Num8.toString()),
            ),
            Number(
              number: value.Num9.toString(),
              color: Colors.blue,
              onTap:() => value.EnterNumber(value.Num9.toString()),
            ),
             Symboll(
              color: Colors.blue,
              char: 'x',
              onTap:() => value.EnterOperation("x"),
            ),
          ],
        ),
      ),
    );
  }
}
