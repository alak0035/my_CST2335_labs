import 'package:encrypted_shared_preferences/encrypted_shared_preferences.dart';
import 'package:flutter/material.dart';
import 'package:my_flutter_labs/repository.dart';

class ProfilePage extends StatefulWidget {
  @override State<ProfilePage> createState() {return ProfilePageState();}
}


class ProfilePageState extends State<ProfilePage> {
  late String uName;

  @override
  void initState() {
    super.initState();

    uName = DataRepository.uName;

    var snackbar = SnackBar(
      content: Text("Welcome Back $uName"),
      duration: Duration(seconds: 7),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackbar);

  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:
          AppBar(
            title: Text("Page 2"),
          ),

        body:
          Center(
            child: Column(
              children: <Widget>[
                TextField(
                  // controller: _controller2,
                  decoration: InputDecoration(border: OutlineInputBorder(), labelText: "First Name"),
                ),

                TextField(
                  decoration: InputDecoration(border: OutlineInputBorder(), labelText: "Last Name"),
                ),

                Flexible(
                    child:
                      TextField(
                        decoration: InputDecoration(border: OutlineInputBorder(), labelText: "Phone Number"),
                      ),
                ),

                Flexible(
                    child:
                      TextField(
                        decoration: InputDecoration(border: OutlineInputBorder(), labelText: "Email address"),
                      ),
                ),

              ],
            ),
          )
    ); //Use a Scaffold to layout a page with an AppBar and main body region
  }
}