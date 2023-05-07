import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/theme.dart';
import '../../../../core/widget/build_popup_menu_buuton_widget.dart';
import '../../../../core/widget/message_display_widget.dart';

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
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    width: double.infinity,
                    height: 1,
                    color: Colors.grey,
                  ),
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
                              const MessageDisplayWidget(
                                message: "just a second",
                              );
                              // PurpleBookCubit.get(context)
                              //     .getLikesPost(id: feed.posts![index].sId!)
                              //     .then((value) {
                              //   showModalBottomSheet(
                              //     context: contexts,
                              //     isScrollControlled: true,
                              //     shape: const RoundedRectangleBorder(
                              //         borderRadius: BorderRadius.vertical(
                              //             top: Radius.circular(20))),
                              //     builder: (context) => ConditionalBuilder(
                              //       condition: PurpleBookCubit.get(contexts)
                              //           .likeModule!
                              //           .users!
                              //           .isNotEmpty,
                              //       builder: (context) => ListView.separated(
                              //           shrinkWrap: true,
                              //           physics:
                              //               const NeverScrollableScrollPhysics(),
                              //           itemBuilder: (context, index) =>
                              //               buildBottomSheet(
                              //                   PurpleBookCubit.get(contexts)
                              //                       .likeModule!,
                              //                   index,
                              //                   contexts),
                              //           separatorBuilder: (context, index) =>
                              //               const SizedBox(
                              //                 height: 10,
                              //               ),
                              //           itemCount: PurpleBookCubit.get(contexts)
                              //               .likeModule!
                              //               .users!
                              //               .length),
                              //       fallback: (context) => const Center(
                              //           child: Text(
                              //         'Not Likes Yet',
                              //         style: TextStyle(fontSize: 25),
                              //       )),
                              //     ),
                              //   );
                              // });
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
                              onTap: () {
                                // navigatorPush(
                                //     context: contexts,
                                //     widget: ViewPostScreen(
                                //       id: feed.posts![index].sId!,
                                //       addComment: false,
                                //       isFocus: false,
                                //     ));
                              },
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
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Container(
                    width: double.infinity,
                    height: 2,
                    color: Colors.grey,
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: InkWell(
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          height: 40,
                          decoration: const BoxDecoration(
                              // color: MainCubit.get(contexts).isDark
                              //     ? Colors.grey.shade500
                              //     : Colors.grey.shade200,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15))),
                          child: Text(
                            'Write Comment...',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ),
                        onTap: () {
                          // navigatorPush(
                          //     context: contexts,
                          //     widget: ViewPostScreen(
                          //       id: feed.posts![index].sId!,
                          //       addComment: true,
                          //       isFocus: false,
                          //     ));
                        },
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    ElevatedButton(
                        style: ButtonStyle(backgroundColor:
                            MaterialStateColor.resolveWith((states) {
                          if (states.isEmpty) return primaryColor;
                          return secondaryColor;
                        })),
                        onPressed: () {},
                        child: Row(
                          children: const [
                            Icon(
                              Icons.thumb_up,
                              size: 20,
                              //  color:
                              // PurpleBookCubit.get(contexts).isLikePost![index]
                              //     ? const Color(0xFF6823D0)
                              //     : Colors.grey,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text('like',
                                style: TextStyle(
                                  fontSize: 15,
                                  // color: PurpleBookCubit.get(contexts)
                                  //         .isLikePost![index]
                                  //     ? const Color(0xFF6823D0)
                                  //     : Colors.grey,
                                ))
                          ],
                        ))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
      separatorBuilder: (BuildContext context, int index) => SizedBox(
        height: 10,
      ),
    );
  }
}
