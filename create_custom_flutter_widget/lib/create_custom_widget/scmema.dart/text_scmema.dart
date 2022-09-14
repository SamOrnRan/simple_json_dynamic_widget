import 'package:json_theme/json_theme_schemas.dart';

class CustomTextSchema {
  static const id = 'https://your-url-here.com/schemas/dem_custom_text';
  static final schema = {
    r'$schema': 'http://json-schema.org/draft-06/schema#',
    r'$id': id,
    'type': 'object',
    'title': 'TextWidget',
    'additionalProperties': false,
    'required': [
      'text',
    ],
    'properties': {
      'text': SchemaHelper.stringSchema,
      'maxlines': SchemaHelper.numberSchema,
      'style': SchemaHelper.objectSchema(TextStyleSchema.id),
      'overflow': SchemaHelper.objectSchema(TextOverflowSchema.id),
      'strutStyle': SchemaHelper.objectSchema(StrutStyleSchema.id),
    }
  };
}
