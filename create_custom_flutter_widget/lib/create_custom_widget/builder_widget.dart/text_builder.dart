import 'package:child_builder/child_builder.dart';
import 'package:flutter/material.dart';
import 'package:json_class/json_class.dart';

import 'package:json_dynamic_widget/json_dynamic_widget.dart';
import 'package:json_theme/json_theme.dart';

class RichTextBuilder extends JsonWidgetBuilder {
  RichTextBuilder({
    this.maxLines,
    this.overflow,
    this.strutStyle,
    this.textStyle,
    String? text,
  })  : text = text ?? '',
        super(numSupportedChildren: kNumSupportedChildren);
  static const kNumSupportedChildren = 0;
  static const type = 'demo_custom_text';
  final TextStyle? textStyle;
  final StrutStyle? strutStyle;
  final String text;
  final int? maxLines;
  final TextOverflow? overflow;
  static RichTextBuilder? fromDynamic(
    dynamic map, {
    JsonWidgetRegistry? registry,
  }) {
    RichTextBuilder? richTextBuilder;
    if (map != null) {
      richTextBuilder = RichTextBuilder(
        text: map['text'].toString(),
        maxLines: JsonClass.parseInt('maxlines'),
        textStyle: ThemeDecoder.decodeTextStyle(map['style']),
        overflow: ThemeDecoder.decodeTextOverflow(map['overflow']),
        strutStyle: ThemeDecoder.decodeStrutStyle(map['strutStyle']),
      );
    }
    return richTextBuilder;
  }

  @override
  Widget buildCustom(
      {ChildWidgetBuilder? childBuilder,
      required BuildContext context,
      required JsonWidgetData data,
      Key? key}) {
    return Text(
      text,
      key: key,
      maxLines: maxLines,
      overflow: overflow,
      style: textStyle,
      strutStyle: strutStyle,
    );
  }
}
