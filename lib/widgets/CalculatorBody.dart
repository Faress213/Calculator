import 'package:connectivity/Changing%20State/CalculatorItems.dart';
import 'package:connectivity/widgets/CalculatorField.dart';
import 'package:connectivity/widgets/Numbers.dart';
import 'package:connectivity/widgets/fieldcolumn.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class CalculatorBody extends StatelessWidget {
  const CalculatorBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CalculatorItems(),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [Fieldcolumn(), Numbers()],
      ),
    );
  }
}
