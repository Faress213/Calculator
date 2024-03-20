import 'package:flutter/material.dart';

double getResponsiveItem(BuildContext context, {required double itemsize}) {
  double ScaleFactor = getScaleFcator(context);
  double responsiveText = itemsize * ScaleFactor;
  double MinLimit = itemsize * .8;
  double MaxLimit = itemsize * 1.2;
  return responsiveText.clamp(MinLimit, MaxLimit);
}

double getScaleFcator(BuildContext context) {
  double width = MediaQuery.sizeOf(context).width;
  if (width < 600) {
    return width / 400;
  } else if (width < 900) {
    return width / 700;
  } else {
    return width / 1000;
  }
}