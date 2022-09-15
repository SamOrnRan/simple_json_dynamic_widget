import 'package:create_custom_flutter_widget/registry_widget.dart';
import 'package:create_custom_flutter_widget/test_json.dart';
import 'package:create_custom_flutter_widget/widgets/pdf_view.dart';
import 'package:flutter/material.dart';

void main() {
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
      home: PdfWidgetView(),
    );
  }
}
