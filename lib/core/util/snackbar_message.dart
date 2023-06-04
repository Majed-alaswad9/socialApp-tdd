import 'package:flutter/material.dart';

class SnackBarMessage {
  void snackBarMessageSuccess(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(message,style: const TextStyle(fontSize: 15),),
      backgroundColor: Colors.green,
    ));
  }

  void snackBarMessageError(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(message,style: const TextStyle(fontSize: 15),),
      backgroundColor: Colors.red,
    ));
  }
}
