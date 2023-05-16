import 'package:cached_network_image/cached_network_image.dart';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_app_tdd/core/strings/id_and_token.dart';
import 'package:social_app_tdd/core/util/chose_date_time.dart';
import 'package:social_app_tdd/core/util/snackbar_message.dart';
import 'package:social_app_tdd/core/widget/loading_widget.dart';
import 'package:social_app_tdd/features/posts/data/model/post_model.dart';
import 'package:social_app_tdd/features/posts/presentation/bloc/posts_bloc/posts_bloc.dart';
import 'package:social_app_tdd/features/posts/presentation/bloc/posts_bloc/posts_event.dart';
import 'package:social_app_tdd/injection_container.dart' as di;
import '../../../../core/theme.dart';
import '../../../../core/widget/build_popup_menu_button_widget.dart';
import '../../../../core/widget/elevated_button_widget.dart';
import '../bloc/posts_bloc/posts_state.dart';

class BuildFeedPageWidget extends StatelessWidget {
  BuildFeedPageWidget({Key? key}) : super(key: key);
  List<PostModel> postModel=[];

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => di.sl<PostsBloc>()
      ..add(GetUserInformationEvent())
        ..add(GetPostsEvent()),
      child: BlocConsumer<PostsBloc, PostsState>(
        listener: (context, state) {
          if(state is SuccessGetPostsState){
            postModel=state.postModel;
          }else if (state is ErrorGetPostsState) {
            SnackBarMessage().snackBarMessageError(context, state.error);
          }
          if (state is SuccessGetUserInformationState) {
            userId = state.userModel.uId;
            userImage = state.userModel.profileImage;
            userName = state.userModel.userName;
            print('userName $userName userImage $userImage');
          }
        },
        builder: (context, state) {
          if (state is LoadingGetPostsState) {
            return const LoadingWidget();
          }
          return RefreshIndicator(
              color: primaryColor,
                onRefresh: () => _onRefresh(context),
                child: buildListViewPosts(postModel!));


        },
      ),
    );
  }

  Widget buildListViewPosts(List<PostModel> postModel) => ListView.separated(
        physics: const BouncingScrollPhysics(),
        itemCount: postModel.length,
        itemBuilder: (context, index) => ConditionalBuilder(
          condition: postModel.isNotEmpty,
          builder:(context)=> Padding(
            padding: const EdgeInsets.all(5.0),
            child: Card(
              color: Colors.white,
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
                        CircleAvatar(
                          radius: 25,
                          backgroundImage: CachedNetworkImageProvider(
                            postModel[index].userImage!,
                            errorListener: () => const Image(
                                image: AssetImage('assets/image/user.jpg')),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                postModel[index].userName,
                                style: Theme.of(context).textTheme.bodyLarge,
                              ),
                              Text(
                                  ChoseDateTime().chose(DateTime.parse(
                                      postModel[index].createAt.toString())),
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
                      postModel[index].content,
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    if(postModel[index].postImage!.isNotEmpty)
                    InkWell(
                      onTap: () {
                        // navigatorPush(
                        //     context: contexts,
                        //     widget: ViewStringImage(
                        //         image: feed.posts![index].image!.data!));
                      },
                      child: Container(
                        width: double.infinity,
                        height: 250,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            image: DecorationImage(
                              fit: BoxFit.contain,
                              image: CachedNetworkImageProvider(
                                postModel[index].postImage!,
                              ),
                            )),
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
                                  '${postModel[index].likesCount} like',
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
                            isLike: false,
                            onPress: () {},
                            txt: 'Chat',
                            icon: Icons.mark_unread_chat_alt_outlined),
                        ElevatedButtonWidget(
                            isLike: false,
                            onPress: () {}, txt: 'Comment', icon: Icons.comment),
                        ElevatedButtonWidget(
                            isLike: false,
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
          fallback: (context)=>Center(child: Text("No Posts Yet"),),
        ),
        separatorBuilder: (BuildContext context, int index) => const SizedBox(
          height: 10,
        ),
      );

  Future<void> _onRefresh(context) async {
    BlocProvider.of<PostsBloc>(context).add(GetPostsEvent());
  }
}
