import 'dart:convert';

import 'package:flutter/services.dart';

class HelperService {
  Future<Map> getText() async {
    String root = await rootBundle.loadString('asset/json/text.json');
    final jsonData = jsonDecode(root);
    return jsonData;
  }

  Future<Map> getCarouselSlider() async {
    String root =
        await rootBundle.loadString('asset/json/carousel_slider.json');
    return jsonDecode(root);
  }

  Future<Map> getPlaceholder() async {
    String root = await rootBundle.loadString('asset/json/placeholder.json');
    return jsonDecode(root);
  }
}
