import 'package:flutter/material.dart';
import 'package:flutter_training_task/data/data_model.dart';
import 'package:url_launcher/url_launcher.dart';
class UserDetailsPage extends StatelessWidget {

  final Welcome user;

  UserDetailsPage({required this.user});
/*
  String userTitle() {
    String title = "";
    if (user.gender == "Male") {
      title = "Mr.";
    } else if (user.gender == "Female") {
      title = "Ms.";
    }
    return title;
  }*/

  void customLaunch(command) async{
    if(await canLaunch(command)){
      await launch(command);
    }else{
      print('Error');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${user.title} ${user.titleUrdu} '),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 16.0,
            ),
            Center(
              child: Hero(
                tag:user.isbn.toString(),
                child: CircleAvatar(
                  backgroundImage: NetworkImage(user.authors.toString()),
                  radius: 100.0,
                ),
              ),
            ),
            SizedBox(
              height: 22.0,
            ),
            Text(
              '${user.title} ',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.left,
            ),
            SizedBox(
              height: 12.0,
            ),
            Text(
              '${user.titleUrdu}',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.left,
            ),
            SizedBox(
              height: 12.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  '${user.id}',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w300,
                  ),
                  textAlign: TextAlign.left,
                ),
                // FlatButton(
                //   onPressed: () {
                //     customLaunch('mailto:${user.email}?subject=Contact%20Information&body=Type%20your%20mail%20here');
                //   },
                //   child: Icon(
                //     Icons.email,
                //   ),
                // ),
              ],
            ),
            SizedBox(
              height: 12.0,
            ),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Padding(
                  padding: const EdgeInsets.only(left: 12.0, right: 12.0, bottom: 20.0),
                  child: Text(
                    "Price : "+user.price.toString()+" Rs",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
