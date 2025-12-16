import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:sallihli/core/theme/colors.dart';

void showToast({
  required String message,
  ToastGravity? gravity,
  Color? backgroundColor,
  Color? textColor,
  int? values,
}) {
  Fluttertoast.showToast(
    msg: message,
    toastLength: Toast.LENGTH_SHORT,
    gravity: gravity ?? ToastGravity.values[values ?? 0],
    backgroundColor: backgroundColor ?? ColorsManager.rubyOrange,
    textColor: textColor ?? ColorsManager.rubyOrange,
    fontSize: 16.0.sp,
  );
}
