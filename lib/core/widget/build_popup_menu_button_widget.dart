import 'package:flutter/material.dart';
import 'package:social_app_tdd/core/util/show_my_dialog.dart';

class BuildPopupMenuBottom extends StatelessWidget {
  const BuildPopupMenuBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
        icon: const Icon(
          Icons.more_vert,
          color: Colors.grey,
        ),
        onSelected: (value) {
          if (value == ShowMyDialog.edit) {
            // navigatorPush(
            //     context: contexts,
            //     widget: EditPostScreen(
            //       id: feed.posts![index].sId!,
            //       content: feed.posts![index].content!,
            //     ));
          } else if (value == ShowMyDialog.delete) {
            ShowMyDialog.showMyDialog(
                context: context,
                title: 'Delete Post',
                content: 'Are you sure you want to delete this post?',
                textButton_2: TextButton(
                    onPressed: () {
                      // PurpleBookCubit.get(contexts)
                      //     .deletePost(id: feed.posts![index].sId!);
                      Navigator.pop(context, 'OK');
                    },
                    child: const Text('OK')));
          }
        },
        itemBuilder: (BuildContext context) {
          return ShowMyDialog.chose.map((e) {
            return PopupMenuItem<String>(
              value: e,
              child: Text(e),
            );
          }).toList();
        });
  }
}
