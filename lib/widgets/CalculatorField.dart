import 'package:connectivity/Changing%20State/CalculatorItems.dart';
import 'package:connectivity/ResponsiveItems/Responsivefunctions.dart';
import 'package:connectivity/widgets/Numbers.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CalculatorField extends StatelessWidget {
  const CalculatorField({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<CalculatorItems>(
      builder: (context, model, child) {
        return Container(
          clipBehavior: Clip.none,
          color: const Color.fromARGB(255, 59, 59, 59),
          width: double.infinity,
          height: getResponsiveItem(context, itemsize: 80),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            
            child: Text(
                        model.FirstNumber + model.Operation + model.SecondNumber,
                        style:  TextStyle(color: Colors.white,fontSize: getResponsiveItem(context,itemsize: 50)),
                      ),
          ),
        );
      },
    );
  }
}
