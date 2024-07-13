import 'package:blt/src/models/contributors_model.dart';

class Project {
  final String owner;
  final String name;
  final String desc;
  final String logoUrl;
  List<Contributors>? contributors;
  Project({
    required this.owner,
    required this.name,
    required this.desc,
    required this.logoUrl,
    this.contributors,
  });

  Project copyWith(
      {String? owner,
      String? name,
      String? url,
      String? logoUrl,
      List<Contributors>? contributors}) {
    return Project(
      owner: owner ?? this.owner,
      name: name ?? this.name,
      desc: name ?? this.desc,
      logoUrl: logoUrl ?? this.logoUrl,
      contributors: contributors ?? this.contributors,
    );
  }
}
