/*
       _ _           _ 
      | (_)         | |
   ___| |_ _   _  __| |
  / _ \ | | | | |/ _` |
 |  __/ | | |_| | (_| |
  \___|_|_|\__,_|\__,_|
                       
 
 font_entity.dart
                       
 This code is generated. This is read only. Don't touch!

*/

import 'dart:collection';
import 'dart:convert';
import 'package:eliud_core_helpers/base/entity_base.dart';
import 'package:eliud_core_main/model/entity_export.dart';

class FontEntity implements EntityBase {
  final String? fontName;
  final double? size;
  final int? weight;
  final int? style;
  final int? decoration;
  final RgbEntity? color;

  FontEntity({
    this.fontName,
    this.size,
    this.weight,
    this.style,
    this.decoration,
    this.color,
  });

  FontEntity copyWith({
    String? fontName,
    double? size,
    int? weight,
    int? style,
    int? decoration,
    RgbEntity? color,
  }) {
    return FontEntity(
      fontName: fontName ?? this.fontName,
      size: size ?? this.size,
      weight: weight ?? this.weight,
      style: style ?? this.style,
      decoration: decoration ?? this.decoration,
      color: color ?? this.color,
    );
  }

  List<Object?> get props => [
        fontName,
        size,
        weight,
        style,
        decoration,
        color,
      ];

  @override
  String toString() {
    return 'FontEntity{fontName: $fontName, size: $size, weight: $weight, style: $style, decoration: $decoration, color: $color}';
  }

  static FontEntity? fromMap(Object? o, {Map<String, String>? newDocumentIds}) {
    if (o == null) return null;
    var map = o as Map<String, dynamic>;

    var colorFromMap = map['color'];
    if (colorFromMap != null) {
      colorFromMap =
          RgbEntity.fromMap(colorFromMap, newDocumentIds: newDocumentIds);
    }

    return FontEntity(
      fontName: map['fontName'],
      size: double.tryParse(map['size'].toString()),
      weight: map['weight'],
      style: map['style'],
      decoration: map['decoration'],
      color: colorFromMap,
    );
  }

  @override
  Map<String, Object?> toDocument() {
    final Map<String, dynamic>? colorMap =
        color != null ? color!.toDocument() : null;

    Map<String, Object?> theDocument = HashMap();
    if (fontName != null) {
      theDocument["fontName"] = fontName;
    } else {
      theDocument["fontName"] = null;
    }
    if (size != null) {
      theDocument["size"] = size;
    } else {
      theDocument["size"] = null;
    }
    if (weight != null) {
      theDocument["weight"] = weight;
    } else {
      theDocument["weight"] = null;
    }
    if (style != null) {
      theDocument["style"] = style;
    } else {
      theDocument["style"] = null;
    }
    if (decoration != null) {
      theDocument["decoration"] = decoration;
    } else {
      theDocument["decoration"] = null;
    }
    if (color != null) {
      theDocument["color"] = colorMap;
    } else {
      theDocument["color"] = null;
    }
    return theDocument;
  }

  @override
  FontEntity switchAppId({required String newAppId}) {
    var newEntity = copyWith();
    return newEntity;
  }

  static FontEntity? fromJsonString(String json,
      {Map<String, String>? newDocumentIds}) {
    Map<String, dynamic>? generationSpecificationMap = jsonDecode(json);
    return fromMap(generationSpecificationMap, newDocumentIds: newDocumentIds);
  }

  String toJsonString() {
    return jsonEncode(toDocument());
  }

  @override
  Future<Map<String, Object?>> enrichedDocument(
      Map<String, Object?> theDocument) async {
    return theDocument;
  }
}
