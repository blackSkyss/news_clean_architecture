import 'dart:convert';

import 'package:equatable/equatable.dart';

class Source extends Equatable {
  Source({
    this.id,
    this.name,
  });

  factory Source.fromJson(String source) => Source.fromMap(json.decode(source));

  factory Source.fromMap(Map<String, dynamic> map) {
    return Source(
      id: map['id'] != null ? map['id'] as String : null,
      name: map['name'] != null ? map['name'] as String : null,
    );
  }

  final String? id;
  final String? name;

  @override
  List<Object?> get props => [id, name];

  @override
  String toString() => 'Source(id: $id, name: $name)';

  Source copyWith({
    String? id,
    String? name,
  }) {
    return Source(
      id: id ?? this.id,
      name: name ?? this.name,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    if (id != null) {
      result.addAll({'id': id});
    }
    if (name != null) {
      result.addAll({'name': name});
    }

    return result;
  }

  String toJson() => json.encode(toMap());
}
