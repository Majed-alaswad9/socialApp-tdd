import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:social_app_tdd/core/strings/id_and_token.dart';
import 'package:social_app_tdd/core/theme.dart';
import 'package:social_app_tdd/features/auth/presentation/bloc/auth/auth_bloc.dart';
import 'package:social_app_tdd/features/posts/presentation/bloc/add_delete_edit_post_bloc/add_edit_delete_post_bloc.dart';
import 'package:social_app_tdd/features/posts/presentation/bloc/add_delete_edit_post_bloc/add_edit_delete_post_event.dart';
import 'package:social_app_tdd/injection_container.dart' as di;
import '../../../../core/util/snackbar_message.dart';
import '../bloc/add_delete_edit_post_bloc/add_edit_delete_post_state.dart';

class AddPostWidget extends StatelessWidget {
  AddPostWidget({
    Key? key,
  }) : super(key: key);
  var formKey = GlobalKey<FormState>();
  var contentController = TextEditingController();
  var userId = FirebaseAuth.instance.currentUser!.uid;
  File? image;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return BlocProvider(
        create: (_) => di.sl<AddDeleteEditPostBloc>(),
        child: BlocConsumer<AddDeleteEditPostBloc, AddDeleteEditPostState>(
          listener: (context, state) {
            if (state is SuccessPickImageState) {
              image = state.image;
              SnackBarMessage().snackBarMessageSuccess(context, 'pick image');
            }
            if (state is SuccessAddDeleteEditPostState) {
              SnackBarMessage().snackBarMessageSuccess(context, state.message);
            }
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
                              scrollPadding: const EdgeInsets.all(10),
                              autofocus: true,
                              maxLines: 6,
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
                            Stack(
                              alignment: Alignment.topRight,
                              children: [
                                Container(
                                  width: double.infinity,
                                  height: 300,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      image: DecorationImage(
                                        fit: BoxFit.fill,
                                        image: FileImage(state.image),
                                      )),
                                ),
                                CircleAvatar(
                                    radius: 20,
                                    backgroundColor: Colors.black12,
                                    child: IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                          Icons.close,
                                          color: Colors.red,
                                        )))
                              ],
                            ),
                        ],
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: MaterialButton(
                          onPressed: () {
                            BlocProvider.of<AddDeleteEditPostBloc>(context).add(
                                AddPostEvent(
                                    userId: userId,
                                    userName: "majed",
                                    userImage: '',
                                    date: DateTime.now().toString(),
                                    content: contentController.text,
                                    image: image));
                          },
                          color: primaryColor,
                          child: const Text(
                            'Camera',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: MaterialButton(
                                onPressed: () {
                                  BlocProvider.of<AddDeleteEditPostBloc>(
                                          context)
                                      .add(PickImageEvent(ImageSource.camera));
                                },
                                color: primaryColor,
                                child: const Text(
                                  'Camera',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Expanded(
                                child: MaterialButton(
                              onPressed: () {
                                BlocProvider.of<AddDeleteEditPostBloc>(context)
                                    .add(PickImageEvent(ImageSource.gallery));
                              },
                              color: primaryColor,
                              child: const Text('Gallery',
                                  style: TextStyle(color: Colors.white)),
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
