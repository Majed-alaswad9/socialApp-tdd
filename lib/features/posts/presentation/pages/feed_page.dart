import 'package:flutter/material.dart';
import 'package:social_app_tdd/core/widget/build_popup_menu_buuton_widget.dart';
import 'package:social_app_tdd/features/posts/presentation/widgets/build_feed_page_widget.dart';

import '../../../../core/theme.dart';
import '../../../../core/widget/message_display_widget.dart';

class FeedPage extends StatelessWidget {
  const FeedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Feed'),
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return const BuildFeedPageWidget();
  }
}
