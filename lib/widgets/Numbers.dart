import 'dart:ffi';

import 'package:connectivity/Changing%20State/CalculatorItems.dart';
import 'package:connectivity/widgets/ItemsRows/FifthRow.dart';
import 'package:connectivity/widgets/ItemsRows/FirstRow.dart';
import 'package:connectivity/widgets/ItemsRows/FourthRow.dart';
import 'package:connectivity/widgets/Numberwidget.dart';
import 'package:connectivity/widgets/ItemsRows/SecondRow.dart';
import 'package:connectivity/widgets/ItemsRows/ThirdRow.dart';
import 'package:connectivity/widgets/symbolwidget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Numbers extends StatelessWidget {
  const Numbers({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        FirstRow(),
        SecondRow(),
        ThirdRow(),
        FourthRow(),
        FifthRow(),
      ],
    );
  }
}
