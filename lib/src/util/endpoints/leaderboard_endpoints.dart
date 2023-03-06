class LeaderboardEndpoints {
  LeaderboardEndpoints._();

  static const String baseUrl = "https://www.blt.owasp.org/api/v1/";

  static const String globalLeaderboard = baseUrl + "userscore/";
  static const String companyScoreboard = baseUrl + "scoreboard/";
}
