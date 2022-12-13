import 'package:flutter/material.dart';
import 'package:flutter_training_task/data/data_model.dart';

import 'package:flutter_training_task/presentation/screens/user_details_page.dart';

class UserTile extends StatelessWidget {
  final Welcome user;

  UserTile({required this.user});

  String userTitle() {
    String title = "";
    return title;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        children: [
          ListTile(
            leading: Hero(
              tag: user.id.toString(),
              child: CircleAvatar(
                backgroundImage: NetworkImage(user.photos.toString()),
              ),
            ),
            title: Text('${user.title}' ),
            subtitle: Text(user.titleUrdu.toString()),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => UserDetailsPage(user: user)));
            },
          ),
          Divider(
            thickness: 2.0,
          ),
        ],
      ),
    );
  }
}
