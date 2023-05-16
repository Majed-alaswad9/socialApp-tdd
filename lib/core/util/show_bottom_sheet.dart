import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:social_app_tdd/core/theme.dart';

class ShowModalBottomSheet {
  void showBottomSheet(context,Widget widget) => showModalBottomSheet(
    backgroundColor: secondaryColor,
        context: context,
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
        builder: (_) => widget
      );
}
