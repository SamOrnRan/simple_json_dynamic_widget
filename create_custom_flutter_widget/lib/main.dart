import 'package:create_custom_flutter_widget/create_custom_widget/init_fuction/init_function.dart';
import 'package:create_custom_flutter_widget/registry_widget.dart';
import 'package:create_custom_flutter_widget/test_json.dart';
import 'package:flutter/material.dart';

void main() {
  InitFuction().initFuction();
  AddNewWidgetToSchame().addSchema();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}
