import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:social_app_tdd/core/strings/id_and_token.dart';
import 'package:social_app_tdd/core/util/snackbar_message.dart';
import 'package:social_app_tdd/features/posts/presentation/bloc/add_delete_edit_post_bloc/add_edit_delete_post_bloc.dart';
import 'package:social_app_tdd/injection_container.dart' as di;
import '../../../../core/widget/elevated_button_widget.dart';

// ignore: must_be_immutable
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
    return Scaffold(
      appBar: _buildAppBar(context),
      body: _buildBody(height),
    );
  }

  AppBar _buildAppBar(context) => AppBar(
        title: const Text('New Post'),
        actions: [
          TextButton(
              onPressed: () {
                BlocProvider.of<AddDeleteEditPostBloc>(context).add(
                    AddDeleteEditPostEvent.addPostEvent(
                        userId!,
                        userName!,
                        userImage!,
                        DateTime.now().toString(),
                        contentController.text,
                        postImage));
              },
              child: const Text('Post'))
        ],
      );

  Widget _buildBody(double height) {
    return BlocProvider(
        create: (_) => di.getIt<AddDeleteEditPostBloc>(),
        child: BlocConsumer<AddDeleteEditPostBloc, AddDeleteEditPostState>(
          listener: (context, state) {
            state.maybeWhen(
              orElse: () {},
              successPickImageState: (image) {
                postImage = image;
              },
              errorPickImageState: (message) {
                SnackBarMessage().snackBarMessageError(context, message);
              },
              successAddDeleteEditPostState: (message) {
                SnackBarMessage().snackBarMessageSuccess(context, message);
                Navigator.pushNamedAndRemoveUntil(
                    context, '/feedScreen', (route) => false);
              },
            );
            // if (state is SuccessAddDeleteEditPostState) {
            //   SnackBarMessage().snackBarMessageSuccess(context, state.message);
            //   Navigator.pushAndRemoveUntil(
            //       context,
            //       MaterialPageRoute(builder: (_) => const FeedPage()),
            //       (route) => false);
            // } else if (state is ErrorAddDeleteEditPostState) {
            //   SnackBarMessage().snackBarMessageSuccess(context, state.message);
            // }
            // if (state is SuccessPickImageState) {
            //   postImage = state.image;
            // }
          },
          builder: (context, state) {
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
                              minLines: 1,
                              keyboardType: TextInputType.multiline,
                              decoration: const InputDecoration(
                                hintStyle: TextStyle(color: Colors.black),
                                hintText: 'What\'s on your mind? ',
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                          if (postImage != null)
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
                                  .add(AddDeleteEditPostEvent.addPostEvent(
                                      userId!,
                                      userName!,
                                      userImage!,
                                      DateTime.now().toString(),
                                      contentController.text,
                                      postImage));
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
                                    .add(const AddDeleteEditPostEvent
                                        .pickImageEvent(ImageSource.camera));
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
                                    .add(const AddDeleteEditPostEvent
                                        .pickImageEvent(ImageSource.gallery));
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
