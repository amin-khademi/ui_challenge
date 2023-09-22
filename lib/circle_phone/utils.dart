import 'package:flutter/material.dart';

extension SizeX on Size {
  Offset get centerOffset => Offset(width / 2, width / 2);
}

extension ListExtension<T> on List<T> {
  List<T> addBetween(T seprator) {
    if (length <= 1) {
      return toList();
    }
    final newItems = <T>[];

    for (int i = 0; i < length - 1; i++) {
      newItems.add(this[i]);
      newItems.add(seprator);
    }
    newItems.add(this[length - 1]);
    return newItems;
  }
}
