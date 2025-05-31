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
            Text("BROWSE CATEGORIES", style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),),

            Text("Not sure exactly which recipe you're looking for? Do a search, or dive into our most popular categories."),

            Text("BY MEAT", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
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
                            radius: 65,
                          ),
                          Text("BEEF", style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold)),
                          Text("BEEF", style: TextStyle(fontSize: 25.0, color: Colors.white)),
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
                            radius: 65,
                          ),
                          Text("CHICKEN", style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold)),
                          Text("CHICKEN", style: TextStyle(fontSize: 25.0, color: Colors.white)),
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
                            radius: 65,
                          ),
                          Text("PORK", style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold)),
                          Text("PORK", style: TextStyle(fontSize: 25.0, color: Colors.white)),
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
                            radius: 65,
                          ),
                          Text("SEAFOOD", style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold)),
                          Text("SEAFOOD", style: TextStyle(fontSize: 25.0, color: Colors.white)),
                        ]
                    ),
                  ],
                ),
              ],
            ),

            Text("BY COURSE", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage("images/mains.jpg"),
                      radius: 65,
                    ),
                    Text("Main Dishes", style: TextStyle(fontWeight: FontWeight.bold),),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage("images/salad.jpg"),
                      radius: 65,
                    ),
                    Text("Salad Recipes", style: TextStyle(fontWeight: FontWeight.bold),),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage("images/sidedishes.jpg"),
                      radius: 65,
                    ),
                    Text("Side Dishes", style: TextStyle(fontWeight: FontWeight.bold),),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage("images/crockpot.jpg"),
                      radius: 65,
                    ),
                    Text("Crockpot", style: TextStyle(fontWeight: FontWeight.bold),),
                  ],
                ),
              ],
            ),

            Text("BY DESSERT", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage("images/icecream.jpg"),
                      radius: 65,
                    ),
                    Text("Ice Cream", style: TextStyle(fontWeight: FontWeight.bold),),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage("images/brownies.jpg"),
                      radius: 65,
                    ),
                    Text("Brownies", style: TextStyle(fontWeight: FontWeight.bold),),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage("images/pies.jpg"),
                      radius: 65,
                    ),
                    Text("Pies", style: TextStyle(fontWeight: FontWeight.bold),),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage("images/cookies.jpg"),
                      radius: 65,
                    ),
                    Text("Cookies", style: TextStyle(fontWeight: FontWeight.bold),),
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
