import 'package:flutter/material.dart';
// import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class PdfWidgetView extends StatefulWidget {
  const PdfWidgetView({Key? key}) : super(key: key);

  @override
  State<PdfWidgetView> createState() => _MyAppState();
}

class _MyAppState extends State<PdfWidgetView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FlutterPluginPDFViewer'),
      ),
      body: Container(color: Colors.blue, child: Text("Demo")),
    );
  }
}
