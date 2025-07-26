import 'package:flutter/material.dart';
import 'package:my_flutter_labs/ListDatabase.dart';
import 'package:my_flutter_labs/ShoppingItem.dart';

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
  List<String> itemNames = [];
  List<String> itemNums = [];
  List<ShoppingItem> items = [];

  late var daoObj;



  @override
  void initState() {
    super.initState();
    _controller1 = TextEditingController();
    _controller2 = TextEditingController();


    $FloorListDatabase.databaseBuilder('lab_database.db')
        .build().then( (database) async {
          daoObj = database.getDAO;
          var dbResults = await daoObj.getList();
          setState(() {

            items = dbResults;
          });

    } );
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
        child: Padding(padding: EdgeInsets.all(20),
            child: listPage()

        ),


      ),
    );// This trailing comma makes auto-formatting nicer for build methods.
  }

  Widget listPage(){
    return Column(children: [
      Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:[

            Expanded(child: TextField(
              controller: _controller1,
              decoration: InputDecoration(
                  hintText: "Type the item here",
                  border: OutlineInputBorder()
              ),
            )),

            Expanded(child: TextField(
                controller: _controller2,
                decoration: InputDecoration(
                    hintText: "Type the quantity here",
                    border: OutlineInputBorder()

                ))
            ),

            ElevatedButton(
                onPressed: () {
                  var inputName = _controller1.value.text;
                  var inputNum = _controller2.value.text;

                  setState(() {
                    var newItem = ShoppingItem(ShoppingItem.ID++, inputName, inputNum);

                    daoObj.addShoppingItem(newItem);
                    items.add(newItem);

                    _controller1.text = "";
                    _controller2.text = "";
                  });



                },
                child: Text("Add")
            ),

          ]),


      Expanded(child:
      ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, rowNumber) {
            if (items.isEmpty) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text("There are no items in the list")],
              );

            } else if (items.isNotEmpty){
              return GestureDetector(
                  onLongPress: (){
                    showDialog(context: context, builder: (BuildContext context) => AlertDialog(
                      title: Text("Delete entry for ${items[rowNumber].name}?"),
                      actions: <Widget>[
                        Row(
                          children: [
                            ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    daoObj.removeShoppingItem(items[rowNumber]);
                                    items.removeAt(rowNumber);
                                  });
                                  Navigator.pop(context);
                                },
                                child: Text("Yes")),

                            ElevatedButton(
                                onPressed: (){
                                  Navigator.pop(context);
                                },
                                child: Text("No"))
                          ],
                        )
                      ],
                    ));
                  },
                  child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("${rowNumber+1}: ${items[rowNumber].name}  quantity: ${items[rowNumber].amnt}")
                    ],
                  )
              );
            }
            // if (rowNumber < 0){
            //   return Text("within");
            // } else {
            //   return Text("outside");
            // }
          }
      )
      )
    ],);
  }


}

