import 'package:flutter/material.dart';

import '../../../../core/theme.dart';

class ElevatedButtonWidget extends StatelessWidget {
  const ElevatedButtonWidget(
      {Key? key, required this.onPress, required this.txt, required this.icon, required this.isLike})
      : super(key: key);
  final bool isLike;
  final void Function() onPress;
  final String txt;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateColor.resolveWith((states) {
          if (states.isEmpty) return Colors.grey;
          if(isLike)return primaryColor;
          return secondaryColor;
        })),
        onPressed: onPress,
        child: Row(
          children: [
            Icon(
              icon,
              size: 20,
              color:Colors.white,
            ),
            const SizedBox(
              width: 5,
            ),
            Text(txt,
                style: const TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                ))
          ],
        ));
  }
}
