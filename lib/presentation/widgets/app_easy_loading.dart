import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

import '../../core/colors/app_colors.dart';
easyLoadingShowProgress({
  String? status,
  Widget? indicator,
  EasyLoadingMaskType? maskType = EasyLoadingMaskType.clear,
  bool? dismissOnTap,
  bool withDismiss = true,
}){
  easyLoadingDismiss(withDismiss: withDismiss);
  // EasyLoading.instance
  //   ..displayDuration =const Duration(milliseconds: 2000)
  //   ..loadingStyle =EasyLoadingStyle.custom //This was missing in earlier code
  //   ..backgroundColor = blue009DC4Color
  //   ..indicatorColor = Colors.white
  //   ..maskColor = Colors.red
  //   ..textColor = Colors.white
  //   ..dismissOnTap = false;
  EasyLoading.show(status: status, indicator: indicator, maskType: maskType,dismissOnTap: dismissOnTap,);
}
easyLoadingShowError( String status, {
  Duration? duration,
  EasyLoadingMaskType? maskType,
  bool? dismissOnTap,
  bool withDismiss = true
}){
  easyLoadingDismiss(withDismiss: withDismiss);
  EasyLoading.showError(status,duration: duration, maskType: maskType, dismissOnTap: dismissOnTap);
}
easyLoadingDismiss({bool withDismiss = true}){
  if(withDismiss) {
    EasyLoading.dismiss();
  }
}