class AppUrl {
  static const String liveURL = "https://www.bugheist.com";
  static const String liveBaseURL = "https://www.bugheist.com/api/v1";
  static const String localBaseURL = "http://127.0.0.1:4000/api/v1";
  static const String testBaseURL = "http://127.0.0.1:8000";
  static const String stagingURL = "https://bugheist-staging.herokuapp.com";
  static const String stagingBaseURL =
      "https://bugheist-staging.herokuapp.com/api/v1";

  static const String baseURL = stagingBaseURL;

  static const String login = baseURL + "/auth/login/";
  static const String register = baseURL + "/auth/registration/";
  static const String forgotPassword = baseURL + "/forgot-password";
  static const String user = baseURL + "/auth/user/";
}
