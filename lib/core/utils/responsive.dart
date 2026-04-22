import 'package:flutter/material.dart';

class Responsive {
  static double w(BuildContext context, double size) =>
      MediaQuery.of(context).size.width * (size / 375);

  static double h(BuildContext context, double size) =>
      MediaQuery.of(context).size.height * (size / 812);
}
