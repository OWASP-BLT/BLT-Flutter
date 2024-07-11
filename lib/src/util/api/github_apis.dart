import 'dart:convert';
import 'package:blt/src/models/contributors_model.dart';
import 'package:http/http.dart' as http;

class GithubApis {
  GithubApis._();

  static Future<List<Contributors?>?> getContributors(
      String projectName, String ownerName) async {
    String searchUrl =
        "https://api.github.com/repos/$ownerName/$projectName/contributors";
    print(searchUrl);
    List<Contributors?> contributors = [];
    try {
      var response = await http.get(
        Uri.parse(
          searchUrl,
        ),
      );
      var json = jsonDecode(response.body);
      contributors = Contributors.fromSnapshot(json);
    } catch (e) {
      print(e);
    }
    return contributors;
  }
}
