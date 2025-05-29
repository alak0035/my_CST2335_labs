import 'package:flutter/material.dart';

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
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  String password = "";
  var imageSource = "images/question-mark.png";

  @override
  void initState() {
    super.initState();
    _controller1 = TextEditingController();
    _controller2 = TextEditingController();
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text("BROWSE CATEGORIES"),
            Text("Not sure exactly which recipe you're looking for? Do a search, or dive into our most popular categories."),

            Text("BY MEAT"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Stack(
                        alignment: AlignmentDirectional.center,
                        children: <Widget>[
                          CircleAvatar(
                            backgroundImage: AssetImage("images/beef.jpg"),
                            radius: 80,
                          ),
                          Text("BEEF", style: TextStyle(fontSize: 30.0),)
                        ]
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Stack(
                        alignment: AlignmentDirectional.center,
                        children: <Widget>[
                          CircleAvatar(
                            backgroundImage: AssetImage("images/chicken.jpg"),
                            radius: 80,
                          ),
                          Text("CHICKEN", style: TextStyle(fontSize: 30.0, color: Colors.white),)
                        ]
                    ),

                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Stack(
                        alignment: AlignmentDirectional.center,
                        children: <Widget>[
                          CircleAvatar(
                            backgroundImage: AssetImage("images/pork.jpg"),
                            radius: 80,
                          ),
                          Text("PORK", style: TextStyle(fontSize: 30.0),)
                        ]
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Stack(
                        alignment: AlignmentDirectional.center,
                        children: <Widget>[
                          CircleAvatar(
                            backgroundImage: AssetImage("images/seafood.jpg"),
                            radius: 80,
                          ),
                          Text("SEAFOOD", style: TextStyle(fontSize: 30.0),)
                        ]
                    ),
                  ],
                ),
              ],
            ),

            Text("BY COURSE"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage("images/mains.jpg"),
                      radius: 80,
                    ),
                    Text("Main Dishes"),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage("images/salad.jpg"),
                      radius: 80,
                    ),
                    Text("Salad Recipes"),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage("images/sidedishes.jpg"),
                      radius: 80,
                    ),
                    Text("Side Dishes"),

                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage("images/crockpot.jpg"),
                      radius: 80,
                    ),
                    Text("Crockpot"),
                  ],
                ),
              ],
            ),

            Text("BY DESSERT"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage("images/beef.jpg"),
                      radius: 80,
                    ),
                    Text("Ice Cream"),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage("images/beef.jpg"),
                      radius: 80,
                    ),
                    Text("Brownies"),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage("images/beef.jpg"),
                      radius: 80,
                    ),
                    Text("Pies"),


                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage("images/beef.jpg"),
                      radius: 80,
                    ),
                    Text("Cookies"),
                  ],
                ),

              ],
            ),
            
          ],
        ),
      ),// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
