class TechNewsModel {
  final String? link;
  final String? image;
  final String? description;
  final String? title;
  final List<Post>? posts;

  TechNewsModel({
    this.link,
    this.image,
    this.description,
    this.title,
    this.posts,
  });

  TechNewsModel copyWith({
    String? link,
    String? image,
    String? description,
    String? title,
    List<Post>? posts,
  }) =>
      TechNewsModel(
        link: link ?? this.link,
        image: image ?? this.image,
        description: description ?? this.description,
        title: title ?? this.title,
        posts: posts ?? this.posts,
      );

  factory TechNewsModel.fromJson(Map<String, dynamic> json) => TechNewsModel(
        link: json["link"],
        image: json["image"],
        description: json["description"],
        title: json["title"],
        posts: json["posts"] == null
            ? []
            : List<Post>.from(json["posts"]!.map((x) => Post.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "link": link,
        "image": image,
        "description": description,
        "title": title,
        "posts": posts == null
            ? []
            : List<dynamic>.from(posts!.map((x) => x.toJson())),
      };
}

class Post {
  final String? link;
  final String? title;
  final DateTime? pubDate;
  final String? description;
  final String? thumbnail;

  Post({
    this.link,
    this.title,
    this.pubDate,
    this.description,
    this.thumbnail,
  });

  Post copyWith({
    String? link,
    String? title,
    DateTime? pubDate,
    String? description,
    String? thumbnail,
  }) =>
      Post(
        link: link ?? this.link,
        title: title ?? this.title,
        pubDate: pubDate ?? this.pubDate,
        description: description ?? this.description,
        thumbnail: thumbnail ?? this.thumbnail,
      );

  factory Post.fromJson(Map<String, dynamic> json) => Post(
        link: json["link"],
        title: json["title"],
        pubDate:
            json["pubDate"] == null ? null : DateTime.parse(json["pubDate"]),
        description: json["description"],
        thumbnail: json["thumbnail"],
      );

  Map<String, dynamic> toJson() => {
        "link": link,
        "title": title,
        "pubDate": pubDate?.toIso8601String(),
        "description": description,
        "thumbnail": thumbnail,
      };
}
