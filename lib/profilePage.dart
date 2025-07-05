import 'package:encrypted_shared_preferences/encrypted_shared_preferences.dart';
import 'package:flutter/material.dart';
import 'package:my_flutter_labs/repository.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfilePage extends StatefulWidget {
  @override State<ProfilePage> createState() {return ProfilePageState();}
}


class ProfilePageState extends State<ProfilePage> {
  late TextEditingController _controllerPhone;
  late TextEditingController _controllerEmail;
  late TextEditingController _controllerFName;
  late TextEditingController _controllerLName;
  late String uName;

  @override
  void initState() {
    super.initState();
    _controllerPhone = TextEditingController();
    _controllerEmail = TextEditingController();
    _controllerFName = TextEditingController();
    _controllerLName = TextEditingController();
    Future.delayed(Duration.zero, () async {
      EncryptedSharedPreferences prefs = EncryptedSharedPreferences();
      String username = await prefs.getString("username");
      String passwd = await prefs.getString("password");
      String securedImage = await prefs.getString("image");
      if (username != "") {
        if (passwd != "") {
          setState(() {
            _controller1.text = username;
            _controller2.text = passwd;
          });
    uName = DataRepository.uName;

  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:
          AppBar(
            title: Text("Welcome Back $uName"),
          ),

        body:
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                TextField(
                  controller: _controllerFName,
                  decoration: InputDecoration(border: OutlineInputBorder(), labelText: "First Name"),
                ),

                TextField(
                  controller: _controllerLName,
                  decoration: InputDecoration(border: OutlineInputBorder(), labelText: "Last Name"),
                ),

                Row(children: <Widget>[
                  Flexible(
                    child:
                    TextField(
                      controller: _controllerPhone,
                      decoration: InputDecoration(border: OutlineInputBorder(), labelText: "Phone Number"),
                    ),
                  ),

                  ElevatedButton(
                      onPressed: () {
                        String phoneNum = _controllerPhone.value.text;
                        canLaunch("tel: $phoneNum").then(
                            (itCan) {
                              launch("tel: $phoneNum");
                            }
                        );
                      },
                      child: Icon(Icons.phone)
                  ),

                  ElevatedButton(
                      onPressed: () {
                        String phoneNum = _controllerPhone.value.text;
                        canLaunch("sms: $phoneNum").then(
                                (itCan) {
                                launch("sms: $phoneNum");
                                }
                        );
                      },
                      child: Icon(Icons.sms)
                  ),
                ],),
                Row(children: [
                  Flexible(
                    child:
                      TextField(
                        controller: _controllerEmail,
                        decoration: InputDecoration(border: OutlineInputBorder(), labelText: "Email address"),
                      )
                  ),

                  ElevatedButton(
                      onPressed: () {
                        String eMail = _controllerEmail.value.text;
                        canLaunch("mailto: $eMail").then(
                                (itCan) {
                              launch("mailto: $eMail");
                            }
                        );
                      },
                      child: Icon(Icons.mail)
                  )
                ],),


              ],
            ),
          )
    ); //Use a Scaffold to layout a page with an AppBar and main body region
  }
}