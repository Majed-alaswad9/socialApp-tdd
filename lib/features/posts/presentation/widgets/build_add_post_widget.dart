import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:social_app_tdd/core/theme.dart';

class AddPostWidget extends StatelessWidget {
  const AddPostWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                Container(
                  width: double.infinity,
                  height: 300,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      image: const DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/image/user.jpg'),
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
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      //TODO
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
                    //TODO
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
    );
  }
}
