import 'package:create_custom_flutter_widget/create_custom_widget/builder_widget.dart/carousel_slider.dart';
import 'package:create_custom_flutter_widget/create_custom_widget/builder_widget.dart/json_pdf_builder.dart';
import 'package:create_custom_flutter_widget/create_custom_widget/builder_widget.dart/json_placeholder_image.dart';
import 'package:create_custom_flutter_widget/create_custom_widget/builder_widget.dart/json_web_view_builder.dart';
import 'package:create_custom_flutter_widget/create_custom_widget/builder_widget.dart/text_builder.dart';
import 'package:create_custom_flutter_widget/create_custom_widget/scmema.dart/carousel_schema.dart';
import 'package:create_custom_flutter_widget/create_custom_widget/scmema.dart/pdf_view_schema.dart';
import 'package:create_custom_flutter_widget/create_custom_widget/scmema.dart/placeholder_schema.dart';
import 'package:create_custom_flutter_widget/create_custom_widget/scmema.dart/web_veiw_schema.dart';
import 'package:flutter/material.dart';
import 'package:json_dynamic_widget/json_dynamic_widget.dart';
import 'package:json_theme/json_theme_schemas.dart';
import 'create_custom_widget/builder_widget.dart/text_builder.dart';
import 'create_custom_widget/scmema.dart/text_scmema.dart';

class AddNewWidgetToSchame {
  Future<void> addSchema({Widget? home}) async {
    var registry = JsonWidgetRegistry.instance;
    var schemaCache = SchemaCache();
    schemaCache.addSchema(CustomTextSchema.id, CustomTextSchema.schema);
    schemaCache.addSchema(CarouselSchema.id, CarouselSchema.schema);
    schemaCache.addSchema(PlaceholderSchema.id, PlaceholderSchema.schema);
    schemaCache.addSchema(WebViewSchema.id, WebViewSchema.schema);
    schemaCache.addSchema(PdfViewSchema.id, PdfViewSchema.schema);
    registry.registerCustomBuilder(
        RichTextBuilder.type,
        const JsonWidgetBuilderContainer(
            builder: RichTextBuilder.fromDynamic,
            schemaId: CustomTextSchema.id));
    registry.registerCustomBuilder(
        JsonCarouselSliderBuilder.type,
        const JsonWidgetBuilderContainer(
            builder: JsonCarouselSliderBuilder.fromDynamic,
            schemaId: CarouselSchema.id));
    registry.registerCustomBuilder(
        JsonPlaceHolderBuilder.type,
        const JsonWidgetBuilderContainer(
          builder: JsonPlaceHolderBuilder.fromDynamic,
          schemaId: PlaceholderSchema.id,
        ));
    registry.registerCustomBuilder(
        JsonWebViewBuilder.type,
        const JsonWidgetBuilderContainer(
            builder: JsonWebViewBuilder.fromDynamic,
            schemaId: WebViewSchema.id));
    registry.registerCustomBuilder(
        JsonPdfViewBuilder.type,
        const JsonWidgetBuilderContainer(
            builder: JsonPdfViewBuilder.fromDynamic,
            schemaId: PdfViewSchema.id));
  }
}
