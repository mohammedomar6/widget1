
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var val;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<ScaffoldMessengerState> scaffoldKey =
      GlobalKey<ScaffoldMessengerState>(debugLabel: "ddfbf");
  var c;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: Text("AppBar Title"),
        actions: [
          IconButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text("notifiction clicked"),
                closeIconColor: Colors.deepOrange,
                showCloseIcon: true,
                action: SnackBarAction(label: "ssdd", onPressed: () {}),
              ));
            },
            icon: Icon(Icons.notification_add_outlined),
          ),
          IconButton(
            onPressed: () {
              setState(() {
                Navigator.of(context).pop();
              });
            },
            icon: Icon(Icons.close),
          ),
        ],
      ),
      bottomSheet: TextButton(
        onPressed: () async {
          await showBottomSheet(
              context: context,
              builder: (c) {
                return Scaffold(
                  body: Column(
                    children: [
                      Text("data"),
                      Text("data"),
                      Text("data"),
                      Text("data"),
                      Text("data"),
                      Text("data"),
                    ],
                  ),
                );
              });
        },
        child: Text("cccc"),
      ),
      body:null


    );
  }
}
