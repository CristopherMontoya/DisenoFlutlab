import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // Application name
      title: 'Flutter Stateful Clicker Counter',
      theme: ThemeData(
        // Application theme data, you can set the colors for the application as
        // you want
        primarySwatch: Colors.lightGreen.shade900,
      ),
      home: MyHomePage(title: 'UIII Act3 Diseño flutterFlow'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
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
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 25, 0, 30),
                child: Container(
                  width: 200,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Color(0xFF559755),
                    borderRadius: BorderRadius.circular(10),
                    shape: BoxShape.rectangle,
                    border: Border.all(
                      color: Color(0xFF094009),
                      width: 5,
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                    child: Text(
                      'CRISTOPHER MONTOYA GARCIA',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              Divider(
                height: 50,
                thickness: 2,
                indent: 120,
                endIndent: 120,
                color: Color(0xFF094009),
              ),
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: Color(0xFFEEEEEE),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xFF094009),
                    )
                  ],
                ),
                child: Image.network(
                  'https://raw.githubusercontent.com/CristopherMontoya/CristopherMontoya-UIII-Act1-GridView-2022-FlutterFlow-/main/imagenyo.jpg',
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
              Divider(
                height: 20,
                thickness: 2,
                indent: 110,
                endIndent: 110,
                color: Color(0xFF094009),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 35, 0, 0),
                child: Container(
                  width: 200,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Color(0xFF559755),
                    borderRadius: BorderRadius.circular(10),
                    shape: BoxShape.rectangle,
                    border: Border.all(
                      color: Color(0xFF094009),
                      width: 5,
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                    child: Text(
                      'Grupo: I\n6to semestre \nProgramacion',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
