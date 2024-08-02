import 'package:blt/src/models/project_model.dart';
import 'package:http/http.dart' as http;

import '../util_import.dart';

class ProjectAPiClient {
  ProjectAPiClient._();

  static Future<List<Project>?> getAllProjects() async {
    List<Project> projects = [];
    try {
      var uri = GeneralEndPoints.apiBaseUrl + "projects/";
      var response = await http.get(Uri.parse(uri));
      var json_res = json.decode(response.body);
      print(json_res);
      projects = Project.fromSnapshot(json_res['projects']);
    } catch (e) {
      print(projects);
      print(e);
    }
    return projects;
  }
}
