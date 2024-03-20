import 'package:connectivity/Changing%20State/CalculatorItems.dart';
import 'package:connectivity/widgets/symbolwidget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FirstRow extends StatelessWidget {
  const FirstRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<CalculatorItems>(
      builder: (context, value, _) => Padding(
        padding: EdgeInsets.symmetric(vertical: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Symboll(
              color: Colors.blue,
              char: 'C',
              onTap: () {
                value.ClearField();
              },
            ),
            Symboll(
              color: Colors.blue,
                char: '+/-',
                onTap: () {
                  value.Signal();
                }),
            Symboll(
              color: Colors.blue,
              char: '%',
              onTap: () {
                value.Mod();
              },
            ),
            Symboll(
              color: Colors.blue,
              char: '/',
              onTap: () {
                value.EnterOperation('/');
              },
            ),
          ],
        ),
      ),
    );
  }
}
