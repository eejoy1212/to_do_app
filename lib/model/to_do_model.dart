import 'dart:convert';

import 'package:get/get.dart';

class ToDo {
  String toDoName;
  Rx<bool> isChecked;
  ToDo({
    required this.toDoName,
    required this.isChecked,
  });

  ToDo copyWith({
    String? toDoName,
    Rx<bool>? isChecked,
  }) {
    return ToDo(
      toDoName: toDoName ?? this.toDoName,
      isChecked: isChecked ?? this.isChecked,
    );
  }

  Map<String, dynamic> toMap() {
    return {'toDoName': toDoName};
  }

  String toJson() => json.encode(toMap());

  @override
  String toString() => 'ToDo(toDoName: $toDoName, isChecked: $isChecked)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ToDo &&
        other.toDoName == toDoName &&
        other.isChecked == isChecked;
  }

  @override
  int get hashCode => toDoName.hashCode ^ isChecked.hashCode;
}
