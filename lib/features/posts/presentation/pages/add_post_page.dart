import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:social_app_tdd/features/posts/presentation/widgets/build_add_post_widget.dart';

class AddPostPage extends StatelessWidget {
  const AddPostPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }

  AppBar _buildAppBar() => AppBar(
        title: const Text('New Post'),
        actions: [
          TextButton(
              onPressed: () {},
              child: const Text(
                'Post',
                style: TextStyle(fontSize: 17, color: Colors.white),
              ))
        ],
      );

  Widget _buildBody() {
    return AddPostWidget();
  }
}