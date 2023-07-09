import 'package:flutter/material.dart';

import 'elevated_button_widget.dart';

class PickImageWidget extends StatelessWidget {
  final void Function() onPressed;
  final void Function() onPressed2;
  const PickImageWidget(
      {super.key, required this.onPressed, required this.onPressed2});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ElevatedButtonWidget(
              isLike: true,
              onPress: onPressed,
              txt: 'Camera',
              icon: Icons.add_a_photo),
          const SizedBox(
            height: 10,
          ),
          ElevatedButtonWidget(
              isLike: true,
              onPress: onPressed2,
              txt: 'Gallery',
              icon: Icons.image),
        ],
      ),
    );
  }
}
