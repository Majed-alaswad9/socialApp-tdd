import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:social_app_tdd/core/strings/id_and_token.dart';
import 'package:social_app_tdd/features/posts/presentation/bloc/add_delete_edit_post_bloc/add_edit_delete_post_bloc.dart';
import 'package:social_app_tdd/features/posts/presentation/bloc/add_delete_edit_post_bloc/add_edit_delete_post_event.dart';
import 'package:social_app_tdd/features/posts/presentation/pages/feed_page.dart';
import 'package:social_app_tdd/injection_container.dart' as di;
import '../../../../core/util/snackbar_message.dart';
import '../../../../core/widget/elevated_button_widget.dart';
import '../../../../core/widget/loading_widget.dart';
import '../bloc/add_delete_edit_post_bloc/add_edit_delete_post_state.dart';

class AddPostWidget extends StatelessWidget {
  AddPostWidget({
    Key? key,
  }) : super(key: key);
  var formKey = GlobalKey<FormState>();
  var contentController = TextEditingController();
  File? postImage;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height - 95;
    return BlocProvider(
        create: (_) => di.sl<AddDeleteEditPostBloc>(),
        child: BlocConsumer<AddDeleteEditPostBloc, AddDeleteEditPostState>(
          listener: (context, state) {
            if (state is SuccessAddDeleteEditPostState) {
              SnackBarMessage().snackBarMessageSuccess(context, state.message);
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (_) => const FeedPage()),
                  (route) => false);
            }else if(state is ErrorAddDeleteEditPostState){
              SnackBarMessage().snackBarMessageSuccess(context, state.message);
            }
            if (state is SuccessPickImageState) {
              postImage = state.image;
            }
          },
          builder: (context, state) {
            if(state is LoadingAddDeleteEditPostState) {
              return const LoadingWidget();
            }
            return SingleChildScrollView(
              child: SizedBox(
                height: height,
                child: Form(
                  key: formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                              controller: contentController,
                              //scrollPadding: const EdgeInsets.all(10),
                              //autofocus: true,
                              minLines: 1,
                              keyboardType: TextInputType.multiline,
                              decoration: const InputDecoration(
                                hintStyle: TextStyle(color: Colors.black),
                                hintText: 'What\'s on your mind? ',
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                          if (state is SuccessPickImageState)
                            Container(
                              width: double.infinity,
                              height: 300,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: FileImage(postImage!),
                                  )),
                            ),
                        ],
                      ),
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButtonWidget(
                          isLike: false,
                            onPress: () {
                              BlocProvider.of<AddDeleteEditPostBloc>(context)
                                  .add(AddPostEvent(
                                  userId: userId!,
                                  userName: userName!,
                                  userImage: userImage!,
                                  date: DateTime.now().toString(),
                                  content: contentController.text,
                                  image: postImage));
                            },
                            txt: 'Post',
                            icon: Icons.add),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Expanded(
                                child: ElevatedButtonWidget(
                                  isLike: false,
                                  onPress: () {
                                    BlocProvider.of<AddDeleteEditPostBloc>(context)
                                        .add(PickImageEvent(ImageSource.camera));
                                  },
                                  txt: 'Camera',
                                  icon: Icons.add_a_photo,
                                )),
                            const SizedBox(
                              width: 10,
                            ),
                            Expanded(
                                child: ElevatedButtonWidget(
                                  isLike: false,
                                  onPress: () {
                                    BlocProvider.of<AddDeleteEditPostBloc>(context)
                                        .add(PickImageEvent(ImageSource.gallery));
                                  },
                                  txt: 'Gallery',
                                  icon: Icons.photo_size_select_actual_outlined,
                                )),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ));
  }
}
