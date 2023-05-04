import 'package:flutter/material.dart';

class Feed extends StatelessWidget {
  const Feed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                child: Image.asset('assets/image/user.jpg'),
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                children: const [
                  Text('Majed Alaswad'),
                  SizedBox(
                    height: 20,
                  ),
                  Text('20/10/2023')
                ],
              )
            ],
          ),
          const Drawer(),
          const Text('content post')
        ],
      ),
    );
  }
}
