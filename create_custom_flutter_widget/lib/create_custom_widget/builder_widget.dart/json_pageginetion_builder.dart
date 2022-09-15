import 'package:child_builder/child_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pagewise/flutter_pagewise.dart';
import 'package:json_dynamic_widget/json_dynamic_widget.dart';

class JsonPageGinetionBuilder extends JsonWidgetBuilder {
// fail
  JsonPageGinetionBuilder({this.pageSze})
      : super(numSupportedChildren: kNumSupportedChildren);
  static const kNumSupportedChildren = -1;
  final int? pageSze;

  @override
  Widget buildCustom(
      {ChildWidgetBuilder? childBuilder,
      required BuildContext context,
      required JsonWidgetData data,
      Key? key}) {
    return _BuildPageginetion(
      pageSize: pageSze,
      childBuilder: childBuilder,
      data: data,
    );
  }
}

class _BuildPageginetion extends StatefulWidget {
  const _BuildPageginetion(
      {Key? key, this.pageSize, this.childBuilder, required this.data})
      : super(key: key);
  final int? pageSize;
  final ChildWidgetBuilder? childBuilder;
  final JsonWidgetData data;

  @override
  State<_BuildPageginetion> createState() => __BuildPageginetionState();
}

class __BuildPageginetionState extends State<_BuildPageginetion> {
  List<JsonWidgetData>? getpageginetion() {
    final data = widget.data.children;
    return data;
  }

  @override
  Widget build(BuildContext context) {
    return PagewiseListView<JsonWidgetData>(
        // pageFuture: ((pageIndex) =>widget.data.getPosts(),
        itemBuilder: (context, entry, index) {
      return widget.data.children![index]
          .build(context: context, childBuilder: widget.childBuilder);
    });
  }
}
