import 'package:connectivity/Changing%20State/CalculatorItems.dart';
import 'package:connectivity/widgets/Numberwidget.dart';
import 'package:connectivity/widgets/SpecialLetter.dart';
import 'package:connectivity/widgets/symbolwidget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FifthRow extends StatelessWidget {
  const FifthRow({
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
            Symboll(
              color: Colors.blue,
              char: ".",
              onTap: () {
                value.EnterNumber(".");
              },
            ),
            Number(
                number: value.Num0.toString(),
                color: Colors.blue,
                onTap: () {
                  value.EnterNumber(value.Num0.toString());
                }),
            PrivateSymbol(
              onTap:()=> value.RemoveLast(),
            ),
            Symboll(
              color: Colors.blue,
              char: "=",
              onTap: () => value.Result(),
            ),
          ],
        ),
      ),
    );
  }
}
