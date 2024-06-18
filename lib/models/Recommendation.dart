// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Recommendation {
  final String? name;
  final String? text;
  final String? source;

  Recommendation({
    this.name,
    this.text,
    this.source,
  });

  Recommendation copyWith({
    String? name,
    String? text,
    String? source,
  }) {
    return Recommendation(
      name: name ?? this.name,
      text: text ?? this.text,
      source: source ?? this.source,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'text': text,
      'source': source,
    };
  }

  factory Recommendation.fromMap(Map<String, dynamic> map) {
    return Recommendation(
      name: map['name'] != null ? map['name'] as String : null,
      text: map['text'] != null ? map['text'] as String : null,
      source: map['source'] != null ? map['source'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Recommendation.fromJson(String source) =>
      Recommendation.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'Recommendation(name: $name, text: $text, source: $source)';

  @override
  bool operator ==(covariant Recommendation other) {
    if (identical(this, other)) return true;

    return other.name == name && other.text == text && other.source == source;
  }

  @override
  int get hashCode => name.hashCode ^ text.hashCode ^ source.hashCode;
}

final List<Recommendation> demo_recommendations = [];
