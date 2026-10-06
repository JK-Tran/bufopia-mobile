import 'package:collection/collection.dart';
import 'package:dartx/dartx.dart';
import 'package:flutter/widgets.dart';

extension NullableListExtensions<T> on List<T>? {
  bool get isNullOrEmpty => this == null || this!.isEmpty;
}

extension ListExtensions<T> on List<T> {
  List<T> appendOrExceptElement(T item) {
    return contains(item)
        ? exceptElement(item).toList(growable: false)
        : appendElement(item).toList(growable: false);
  }

  List<T> plus(T element) {
    return appendElement(element).toList(growable: false);
  }

  List<T> minus(T element) {
    return exceptElement(element).toList(growable: false);
  }

  List<T> plusAll(List<T> elements) {
    return append(elements).toList(growable: false);
  }

  List<T> minusAll(List<T> elements) {
    return except(elements).toList(growable: false);
  }
}

extension SetExtensions<T> on Set<T> {
  Set<T> appendOrExceptElement(T item) {
    return contains(item)
        ? exceptElement(item).toSet()
        : appendElement(item).toSet();
  }

  Set<T> plus(T element) {
    return appendElement(element).toSet();
  }

  Set<T> minus(T element) {
    return exceptElement(element).toSet();
  }

  Set<T> plusAll(List<T> elements) {
    return append(elements).toSet();
  }

  Set<T> minusAll(List<T> elements) {
    return except(elements).toSet();
  }
}

extension MapExtensions<K, V> on Map<K, V> {
  Map<K, V> plus(K key, V value) {
    return <K, V>{key: value, ...this};
  }

  Map<K, V> minus(K key) {
    return <K, V>{...this..remove(key)};
  }

  Map<K, V> plusAll(Map<K, V> map) {
    return <K, V>{...this, ...map};
  }

  Map<K, V> minusAll(Map<K, V> map) {
    return filterKeys((key) => !map.containsKey(key));
  }
}

extension ListExtension<T> on List<T?> {
  void addOrRemove(T? data) {
    contains(data) ? remove(data) : add(data);
  }

  void addIfNotContains(T? data) {
    if (!contains(data)) {
      add(data);
    }
  }

  void addAllIfNotContains(Iterable<T> data) {
    for (final x in data) {
      if (!contains(x)) {
        add(x);
      }
    }
  }

  void removeAllIfContains(Iterable<T> data) {
    for (final x in data) {
      if (contains(x)) {
        remove(x);
      }
    }
  }

  bool containsWhere(bool Function(T? item) test) =>
      firstWhereOrNull(test) != null;
}

extension IterableDividerExtension on Iterable<Widget> {
  Iterable<Widget> applySeparator({required Widget separator}) {
    return mapIndexedCustom(
      (index, item) => <Widget>[
        if (index != 0) separator,
        item,
      ],
    ).expand((element) => element);
  }
}

extension IterableExtension<T> on Iterable<T> {
  /// Maps each element and its index to a new value.
  Iterable<R> mapIndexedCustom<R>(
    R Function(int index, T element) convert,
  ) sync* {
    var index = 0;
    for (final element in this) {
      yield convert(index++, element);
    }
  }
}

extension ListDividerExtension on List<Widget> {
  List<Widget> applySeparator({required Widget separator}) {
    return mapIndexed(
      (index, item) => <Widget>[
        if (index != 0) separator,
        item,
      ],
    ).expand((element) => element).toList();
  }
}
