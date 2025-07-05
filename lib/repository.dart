import 'package:encrypted_shared_preferences/encrypted_shared_preferences.dart';

class DataRepository{
  static String uName = "";
  static String fName = "";
  static String lName = "";
  static String phone = "";
  static String eMail = "";

  static void loadData(){
    //check shared prefs
    //set repository vars to sharedprefs mapped vals
    Future.delayed(Duration.zero, () async {
      EncryptedSharedPreferences prefs = EncryptedSharedPreferences();
      String username = await prefs.getString("username");
      String firstName = await prefs.getString("fname");
      String lastName = await prefs.getString("lname");
      String phoneNum = await prefs.getString("phone");
      String mail = await prefs.getString("email");
      if (username != "") {
        uName = username;
      }
      if (firstName != "") {
        fName = firstName;
      }
      if (lastName != "") {
        lName = lastName;
      }
      if (phoneNum != "") {
        phone = phoneNum;
      }
      if (eMail != "") {
        eMail = mail;
      }
    });
  }

  static void saveData(){
    EncryptedSharedPreferences prefs = EncryptedSharedPreferences();
    prefs.setString("username", uName);
    prefs.setString("fname", fName);
    prefs.setString("lname", lName);
    prefs.setString("phone", phone);
    prefs.setString("email", eMail);
  }
}