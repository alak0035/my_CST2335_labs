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
      if (username != "") {
        uName = username;
      }
    });
  }

  static void saveData(){
    EncryptedSharedPreferences prefs = EncryptedSharedPreferences();

  }
}