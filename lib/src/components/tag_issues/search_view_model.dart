import 'package:blt/src/models/issue_model.dart';
import 'package:flutter/material.dart';

class SearchViewModel {
  late final ValueNotifier<List<Issue>> _issues = ValueNotifier([]);
  ValueNotifier<List<Issue>> get issues => _issues;

  late final ValueNotifier<bool> _loading = ValueNotifier(false);
  ValueNotifier<bool> get loading => _loading;

  List<Issue> allIssues = [];

  void _setLoading(bool val) {
    if (val != _loading.value) {
      _loading.value = val;
    }
  }

  void setIssues(List<Issue> a) {
    allIssues = a;
  }

  Future<void> search(String query) async {
    if (query.isEmpty) return;

    query = query.trim();

    _issues.value = [];
    _issues.notifyListeners();

    _setLoading(true);

    await Future.delayed(const Duration(milliseconds: 250));

    final result = allIssues
        .where(
          (issue) => issue.id.toString().startsWith(query),
        )
        .toList();

    _issues.value = result;
    _issues.notifyListeners();
    _setLoading(false);
  }
}
