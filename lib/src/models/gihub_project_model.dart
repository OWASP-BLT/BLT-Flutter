class Project {
  final String owner;
  final String name;
  final String desc;
  final String logoUrl;
  Project({
    required this.owner,
    required this.name,
    required this.desc,
    required this.logoUrl,
  });

  Project copyWith({
    String? owner,
    String? name,
    String? url,
    String? logoUrl,
  }) {
    return Project(
      owner: owner ?? this.owner,
      name: name ?? this.name,
      desc: name ?? this.desc,
      logoUrl: logoUrl ?? this.logoUrl,
    );
  }
}
