import 'package:blt/src/models/bug_hunt_model.dart';
import 'package:blt/src/util/util_import.dart';
import 'package:http/http.dart' as http;

class BugHuntApiClient {
  BugHuntApiClient._();

  static Future<List<BugHunt>> getListOfBugHunts({http.Client? client}) async {
    String searchUrl = GeneralEndPoints.apiBaseUrl + "/hunt";
    List<BugHunt> bugHuntList = [];
    try {
      var response = (client != null)
          ? await client.get(Uri.parse(searchUrl))
          : await http.get(Uri.parse(searchUrl));
      var decodedResponse = jsonDecode(utf8.decode(response.bodyBytes));
      bugHuntList = BugHunt.fromSnapshot(decodedResponse);
    } catch (e) {
      print(e);
    }
    print(bugHuntList);
    return bugHuntList;
  }
}
