import 'package:flutter/material.dart';
import 'package:social_app_tdd/core/util/snackbar_message.dart';

import '../../../../core/theme.dart';
import '../../../../core/widget/build_popup_menu_button_widget.dart';
import '../../../../core/widget/elevated_button_widget.dart';

class BuildFeedPageWidget extends StatelessWidget {
  const BuildFeedPageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const BouncingScrollPhysics(),
      itemCount: 10,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.all(5.0),
        child: Card(
          elevation: 10,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          margin: const EdgeInsets.symmetric(horizontal: 1.0),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage('assets/image/user.jpg'),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Majed Alaswad',
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          Text('20/10/2023',
                              style: Theme.of(context).textTheme.titleSmall)
                        ],
                      ),
                    ),
                    const BuildPopupMenuBottom()
                  ],
                ),
                const Divider(
                  color: Colors.grey,
                  thickness: 2,
                ),
                Text(
                  'content post',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () {
                    // navigatorPush(
                    //     context: contexts,
                    //     widget: ViewStringImage(
                    //         image: feed.posts![index].image!.data!));
                  },
                  child: Container(
                    width: double.infinity,
                    height: 350,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        image: const DecorationImage(
                            fit: BoxFit.contain,
                            image: AssetImage('assets/image/user.jpg'))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: InkWell(
                            highlightColor: primaryColor,
                            onTap: () {
                              SnackBarMessage().snackBarMessageSuccess(
                                  context, 'Just a Second');
                            },
                            child: Text(
                              'like',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(color: Colors.grey, fontSize: 15),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: SizedBox(
                            height: 30,
                            child: InkWell(
                              onTap: () {},
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  const Icon(
                                    Icons.chat_rounded,
                                    size: 20,
                                    color: Colors.grey,
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    'comment',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall!
                                        .copyWith(
                                            color: Colors.grey, fontSize: 17),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const Divider(
                  color: Colors.grey,
                  thickness: 2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ElevatedButtonWidget(
                        onPress: () {},
                        txt: 'Chat',
                        icon: Icons.mark_unread_chat_alt_outlined),
                    ElevatedButtonWidget(
                        onPress: () {}, txt: 'Comment', icon: Icons.comment),
                    ElevatedButtonWidget(
                        onPress: () {},
                        txt: 'Like',
                        icon: Icons.thumb_up_alt_rounded),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
      separatorBuilder: (BuildContext context, int index) => const SizedBox(
        height: 10,
      ),
    );
  }
}
