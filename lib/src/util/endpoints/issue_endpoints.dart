/// Class for API endpoints to access issues on BLT.
class IssueEndPoints {
  IssueEndPoints._();

  static const String baseUrl = "https://www.blt.owasp.org/api/v1/";

  static const String issues = baseUrl + "issues/";

  static const String userIssues = baseUrl + "userissues/";

  static const String likeIssues = baseUrl + "issue/like/";

  static const String flagIssues = baseUrl + "issue/flag/";
}
