class Contributors {
  final String name;
  final int id;
  int? contributions;
  final String image;
  final String githubUrl;
  String? location;
  String? email;
  String? bio;
  String? twitter;

  Contributors({
    required this.name,
    required this.id,
    required this.image,
    required this.githubUrl,
    this.location,
    this.contributions,
    this.email,
    this.bio,
    this.twitter,
  });

  Contributors copyWith({
    String? name,
    int? id,
    int? contributions,
    String? image,
    String? githubUrl,
    String? location,
    String? email,
    String? bio,
    String? twitter,
  }) {
    return Contributors(
      name: name ?? this.name,
      id: id ?? this.id,
      contributions: contributions ?? this.contributions,
      image: image ?? this.image,
      githubUrl: githubUrl ?? this.githubUrl,
      location: location ?? this.location,
      email: email ?? this.email,
      bio: bio ?? this.bio,
      twitter: twitter ?? this.twitter,
    );
  }

  factory Contributors.fromJson(dynamic json) {
    return Contributors(
      name: json['login'],
      id: json['id'],
      contributions: json['contributions'],
      image: json['avatar_url'],
      githubUrl: json['url'],
      location: json['location'] != null ? json['location'] : "",
      email: json['email'] != null ? json['email'] : "",
      bio: json['bio'] != null ? json['bio'] : "",
      twitter: json['twitter_username'] != null
          ? "https://x.com/" + json['twitter']
          : "",
    );
  }
  static List<Contributors> fromSnapshot(List<dynamic> json) {
    return json.map((data) => Contributors.fromJson(data)).toList();
  }
}
// {
//   "login": "Uttkarsh-raj",
//   "id": 106571927,
//   "avatar_url": "https://avatars.githubusercontent.com/u/106571927?v=4",
//   "url": "https://api.github.com/users/Uttkarsh-raj",
//   "location": "Bangalore, India",
//   "email": null,
//   "bio": null,
//   "twitter_username": "__uttkarsh__",
// }