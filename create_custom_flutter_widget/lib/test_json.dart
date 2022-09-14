import 'package:create_custom_flutter_widget/services/helper_services.dart';
import 'package:flutter/material.dart';
import 'package:json_dynamic_widget/json_dynamic_widget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Map? jsonMap;
  var registry = JsonWidgetRegistry.instance;
  // var jsonData =JsonWidgetData(builder: builder, type: type)
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Map>(
      future: HelperService().getCarouselSlider().then((value) => jsonMap = value),
      builder: (context, snap) {
        if (!snap.hasData) {
          return Container(
            color: Colors.white,
            alignment: Alignment.center,
            child: const CircularProgressIndicator(),
          );
        }
        var jsonData = JsonWidgetData.fromDynamic(jsonMap, registry: registry);
        return jsonData!.build(context: context);
      },
    );
  }
}
