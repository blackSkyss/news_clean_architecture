import 'dart:convert';
import 'package:floor/floor.dart';
import 'package:equatable/equatable.dart';
import '../../../../util/constants/strings.dart';
import 'source.dart';

@Entity(tableName: articlesTableName)
class Article extends Equatable {
  Article({
    this.source,
    this.author,
    this.content,
    this.description,
    this.id,
    this.publishedAt,
    this.title,
    this.url,
    this.urlToImage,
  });

  factory Article.fromJson(String source) =>
      Article.fromMap(json.decode(source));

  factory Article.fromMap(Map<String, dynamic> map) {
    return Article(
      source: map['source'] != null ? Source.fromMap(map['source']) : null,
      author: map['author'] != null ? map['author'] as String : null,
      content: map['content'] != null ? map['content'] as String : null,
      description:
          map['description'] != null ? map['description'] as String : null,
      id: map['id'] != null ? map['id'] as int : null,
      publishedAt:
          map['publishedAt'] != null ? map['publishedAt'] as String : null,
      title: map['title'] != null ? map['title'] as String : null,
      url: map['url'] != null ? map['url'] as String : null,
      urlToImage:
          map['urlToImage'] != null ? map['urlToImage'] as String : null,
    );
  }

  @PrimaryKey(autoGenerate: true)
  final int? id;

  final String? author;
  final String? content;
  final String? description;
  final String? publishedAt;
  final Source? source;
  final String? title;
  final String? url;
  final String? urlToImage;

  @override
  List<Object?> get props {
    return [
      source,
      author,
      content,
      description,
      id,
      publishedAt,
      title,
      url,
      urlToImage,
    ];
  }

  @override
  String toString() {
    return 'ArticleEntity(source: $source, author: $author, content: $content, description: $description, id: $id, publishedAt: $publishedAt, title: $title, url: $url, urlToImage: $urlToImage)';
  }

  Article copyWith({
    Source? source,
    String? author,
    String? content,
    String? description,
    int? id,
    String? publishedAt,
    String? title,
    String? url,
    String? urlToImage,
  }) {
    return Article(
      source: source ?? this.source,
      author: author ?? this.author,
      content: content ?? this.content,
      description: description ?? this.description,
      id: id ?? this.id,
      publishedAt: publishedAt ?? this.publishedAt,
      title: title ?? this.title,
      url: url ?? this.url,
      urlToImage: urlToImage ?? this.urlToImage,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    if (source != null) {
      result.addAll({'source': source!.toMap()});
    }
    if (author != null) {
      result.addAll({'author': author});
    }
    if (content != null) {
      result.addAll({'content': content});
    }
    if (description != null) {
      result.addAll({'description': description});
    }
    if (id != null) {
      result.addAll({'id': id});
    }
    if (publishedAt != null) {
      result.addAll({'publishedAt': publishedAt});
    }
    if (title != null) {
      result.addAll({'title': title});
    }
    if (url != null) {
      result.addAll({'url': url});
    }
    if (urlToImage != null) {
      result.addAll({'urlToImage': urlToImage});
    }

    return result;
  }

  String toJson() => json.encode(toMap());
}
