class BugHunt {
  final int id;
  final String name;
  final String url;
  String? logo;
  final int prize;
  DateTime? startsOn;
  DateTime? endsOn;
  BugHunt({
    required this.id,
    required this.name,
    required this.url,
    this.logo,
    required this.prize,
    this.startsOn,
    this.endsOn,
  });

  BugHunt copyWith({
    int? id,
    String? name,
    String? url,
    String? logo,
    int? prize,
    DateTime? startsOn,
    DateTime? endsOn,
  }) {
    return BugHunt(
      id: id ?? this.id,
      name: name ?? this.name,
      url: url ?? this.url,
      logo: logo ?? this.logo,
      prize: prize ?? this.prize,
      startsOn: startsOn ?? this.startsOn,
      endsOn: endsOn ?? this.endsOn,
    );
  }

  factory BugHunt.fromJson(dynamic json) {
    return BugHunt(
      id: json["id"],
      name: json["name"] ?? "",
      url: json["url"] ?? "",
      logo: json["logo"] ?? "",
      prize: json["prize"],
      startsOn: (json["starts_on"] != null)
          ? DateTime.parse(json["starts_on"])
          : null,
      endsOn: (json["end_on"] != null)
          ? DateTime.parse(json["end_on"] ?? "")
          : null,
    );
  }

  static List<BugHunt> fromSnapshot(List<dynamic> json) {
    return json.map((data) => BugHunt.fromJson(data)).toList();
  }

  @override
  String toString() {
    return 'BugHunt(id: $id, name: $name, url: $url, logo: $logo, prize: $prize, startsOn: $startsOn, endsOn: $endsOn)';
  }

  @override
  bool operator ==(covariant BugHunt other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.name == name &&
        other.url == url &&
        other.logo == logo &&
        other.prize == prize &&
        other.startsOn == startsOn &&
        other.endsOn == endsOn;
  }
}
