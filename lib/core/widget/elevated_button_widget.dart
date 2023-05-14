import 'package:flutter/material.dart';

import '../../../../core/theme.dart';

class ElevatedButtonWidget extends StatelessWidget {
  const ElevatedButtonWidget(
      {Key? key, required this.onPress, required this.txt, required this.icon})
      : super(key: key);
  final void Function() onPress;
  final String txt;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateColor.resolveWith((states) {
          if (states.isEmpty) return Colors.white;
          return primaryColor;
        })),
        onPressed: onPress,
        child: Row(
          children: [
            Icon(
              icon,
              size: 20,
              color:Colors.grey,
            ),
            const SizedBox(
              width: 5,
            ),
            Text(txt,
                style: const TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                ))
          ],
        ));
  }
}
