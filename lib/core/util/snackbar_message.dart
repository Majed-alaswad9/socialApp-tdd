import 'package:flutter/material.dart';

class SnackBarMessage {
  void snackBarMessageSuccess(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(message),
      backgroundColor: Colors.purple,
    ));
  }

  void snackBarMessageError(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(message),
      backgroundColor: Colors.purple,
    ));
  }
}
