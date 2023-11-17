import 'package:flutter/material.dart';

extension StringExtension on String {
  String kebabToCamel() {
    final words = split('-');
    final camelized = words.map((word) {
      if (words.indexOf(word) == 0) return word;
      return word[0].toUpperCase() + word.substring(1);
    }).toList();
    return camelized.join();
  }

  Color toColor() {
    var hexString = this;
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
