/// Class to access the API's authentication endpoints.
class AuthEndPoints {
  AuthEndPoints._();

  static const String baseUrl = "https://www.blt.owasp.org/";

  static const String baseUrl2 = "https://www.blt.owasp.org/auth/";

  static const String emailpasswordLogin = baseUrl + "authenticate/";

  static const String logout = baseUrl2 + "logout/";

  static const String register = baseUrl2 + "registration/";

  static const String reset = baseUrl2 + "password/reset/";
}
