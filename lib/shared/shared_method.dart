import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:project01/shared/theme.dart';


void showCustomSnackbar(BuildContext context, String message){
  Flushbar(
    message: message,
    flushbarPosition: FlushbarPosition.TOP,
    backgroundColor: redColor,
    duration: const Duration(seconds: 2),
  ).show(context);
}


String formatIDR(
    num number, {
      String symbol= 'Rp ',
    }){
  return NumberFormat.currency(
    locale: 'id',
    symbol:symbol,
    decimalDigits: 0,
  ).format(number);
}