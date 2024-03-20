import 'package:connectivity/widgets/CalculatorField.dart';
import 'package:flutter/material.dart';

class Fieldcolumn extends StatelessWidget {
  const Fieldcolumn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * .1,
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: CalculatorField(),
        ),
      ],
    );
  }
}