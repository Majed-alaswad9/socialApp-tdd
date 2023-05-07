import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';

class ShowModalBottomSheet {
  void showBottomSheet(context) => showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
        builder: (context) => ConditionalBuilder(
          condition: 5 == 4,
          builder: (context) => ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) => Text(''),
              separatorBuilder: (context, index) => const SizedBox(
                    height: 10,
                  ),
              itemCount: 10),
          fallback: (context) => const Center(
              child: Text(
            'Not Likes Yet',
            style: TextStyle(fontSize: 25),
          )),
        ),
      );
}
