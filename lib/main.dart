import 'package:encrypted_shared_preferences/encrypted_shared_preferences.dart';
import 'package:flutter/material.dart';
import 'profilePage.dart';
import 'repository.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});





  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      //home: ProfilePage(),
      initialRoute: '/',
      routes: {
        '/' : (context) => MyHomePage(title: 'Title')  ,
        '/secondPage' : (context) => ProfilePage(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late TextEditingController _controller1;
  late TextEditingController _controller2;
  var imageSource = "images/question-mark.png";


  @override
  void initState() {
    super.initState();


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
          var snackbar = SnackBar(
            content: Text("Username: $username Password: $passwd"),
            duration: Duration(seconds: 7),
          );
          ScaffoldMessenger.of(context).showSnackBar(snackbar);
        }
      }
      if (securedImage != ""){
        imageSource = securedImage;
      }
    });
  }

  @override
  void dispose() {
    _controller1.dispose();
    _controller2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
                controller: _controller1,
                decoration: InputDecoration(border: OutlineInputBorder(), labelText: "Login"),
                obscureText:true
            ),

            TextField(
                controller: _controller2,
                decoration: InputDecoration(border: OutlineInputBorder(), labelText: "Password"),
                obscureText:true
            ),

            ElevatedButton(
                onPressed: () {
                  if (_controller2.text == "QWERTY123"){
                    String uName = _controller1.value.text;
                    final prefs = EncryptedSharedPreferences();
                    prefs.setString("username", uName);
                    DataRepository.loadData()
                  }
                  Navigator.pushNamed(  context,"/secondPage" );
                },
                child: Text("Login"),
            ),

            Semantics(
              label: "Question marks image",
              child: Image.asset(imageSource, width: 300, height: 300),
            )
          ],
        ),
      ),// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
