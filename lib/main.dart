import 'package:flutter/material.dart';
import 'package:maths/drawer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Maths',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: MyHomePage(title: 'Maths'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final myController = TextEditingController();
  final myController1 = TextEditingController();
  var _counter = "";
  var _counter1 = "";
  var _Final;
  bool Error11 = true;

  void _incrementCounter() {
    setState(() {
      _counter = myController.text;
      _counter1 = myController1.text;
      if (_counter.isNotEmpty) {
        if (_counter != "" || _counter1 != "") {
          _Final = (int.parse(_counter)) + (int.parse(_counter1));
        }
      }
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter = myController.text;
      _counter1 = myController1.text;
      if (_counter1.isNotEmpty) {
        if (_counter != "" || _counter1 != "") {
          _Final = (int.parse(_counter)) - (int.parse(_counter1));
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(children: [
                  TextField(
                    controller: myController,
                    restorationId: "Id",
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: "Enter your First Number now!!",
                      labelText: "First Number",
                    ),
                  ),
                  TextField(
                    controller: myController1,
                    restorationId: "Id",
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: "Second Number",
                      hintText: "Enter your Second Number now!!",
                    ),
                  ),
                ]),
              ),
              Text('The answer is ', style: TextStyle(fontSize: 23)),
              Text(
                '$_Final',
                style: Theme.of(context).textTheme.headline2,
              ),
              SizedBox(
                height: 25,
              ),
              ElevatedButton(
                  onPressed: _incrementCounter, child: Icon(Icons.add)),
              SizedBox(
                height: 25,
              ),
              ElevatedButton(
                  onPressed: _decrementCounter, child: Icon(Icons.remove)),
            ],
          ),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
