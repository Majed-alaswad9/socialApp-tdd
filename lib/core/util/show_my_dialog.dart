import 'package:flutter/material.dart';

class ShowMyDialog {
  static void showMyDialog(
          {required context,
          required String title,
          required String content,
          required TextButton textButton_2}) =>
      showDialog<String>(
          context: context,
          builder: (BuildContext context) => AlertDialog(
                  title: Text(title),
                  elevation: 10,
                  content: Text(content),
                  actions: [
                    TextButton(
                        onPressed: () => Navigator.pop(context, 'cancel'),
                        child: const Text('cancel')),
                    textButton_2
                  ]));

  static const String edit = 'edit';
  static const String delete = 'delete';
  static const List<String> chose = [edit, delete];
}
