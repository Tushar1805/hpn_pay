import 'package:flutter/material.dart';

import '../../core/colors/app_colors.dart';

Widget loader(BuildContext context, String url) {
  return Container(
    color: whiteFFFFFFColor,
    width: double.infinity,
    height: double.infinity,
  );
}

Widget error(BuildContext context, String url, dynamic error) {
  return Container(
    color: whiteFFFFFFColor,
    width: double.infinity,
    height: double.infinity,
  );
}