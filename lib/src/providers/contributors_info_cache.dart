import 'package:blt/src/providers/providers_imports.dart';

final contributorsProvider = ChangeNotifierProvider((ref) {
  return ContributorsInfoNotifier();
});

class ContributorsInfoNotifier extends ChangeNotifier {
  static Map<String, List<Contributors>?> contributorsInfo = {};

  Future<List<Contributors>> getContributorsInfo(Project project) async {
    if (contributorsInfo.containsKey(project.name)) {
      return contributorsInfo[project.name] ?? [];
    }
    var contributors = await GithubApis.getContributors(
      project.name,
      project.owner,
    );
    contributorsInfo[project.name] = contributors;
    return contributorsInfo[project.name] ?? [];
  }
}
