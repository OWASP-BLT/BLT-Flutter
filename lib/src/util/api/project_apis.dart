import 'dart:convert';

import 'package:blt/src/models/project_model.dart';
import 'package:http/http.dart' as http;

class ProjectAPiClient {
  ProjectAPiClient._();

  static Future<List<Project>?> getAllProjects() async {
    List<Project> projects = [];
    try {
      var uri = "http://192.168.56.1:8000/api/v1/" + "projects/";
      var response = await http.get(Uri.parse(uri));
      var json_res = json.decode(response.body);
      print(json_res);
      projects = Project.fromSnapshot(json_res['projects']);
    } catch (e) {
      print(e);
    }
    return projects;
  }
}
