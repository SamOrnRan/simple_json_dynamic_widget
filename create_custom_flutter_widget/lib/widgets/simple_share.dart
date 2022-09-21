import 'package:flutter/material.dart';
import 'package:flutter_share/flutter_share.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ShareTestingwidget extends StatefulWidget {
  const ShareTestingwidget({Key? key}) : super(key: key);

  @override
  State<ShareTestingwidget> createState() => _ShareTestingwidgetState();
}

class _ShareTestingwidgetState extends State<ShareTestingwidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () async {
                  await FlutterShare.share(
                      title: 'Example share',
                      text: 'Example share text',
                      linkUrl: 'https://flutter.dev/',
                      chooserTitle: 'Example Chooser Title');
                },
                child: const Text("On Share")),
            ElevatedButton(
                onPressed: () async {
                  String value = "Example Subject Symbols are allowed!";
                },
                child: const Text("Laucher")),
            ElevatedButton(
                onPressed: () async {
                  String value = "Example Subject Symbols are allowed!";
                  Fluttertoast.showToast(
                      msg: value, gravity: ToastGravity.BOTTOM);
                },
                child: const Text("Toast")),
          ],
        ),
      ),
    );
  }
}
