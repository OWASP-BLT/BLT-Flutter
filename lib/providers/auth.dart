import 'dart:async';
import 'dart:convert';
//import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import '../data/user.dart';
import '../util/app_url.dart';
import '../util/shared_preferences.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:bugheist/pages/home.dart';

enum Status {
  NotLoggedIn,
  NotRegistered,
  LoggedIn,
  Registered,
  Authenticating,
  Registering,
  LoggedOut
}

class AuthProvider with ChangeNotifier {
  Status _loggedInStatus = Status.NotLoggedIn;
  Status _registeredInStatus = Status.NotRegistered;
  String accessToken = "";

  Status get loggedInStatus => _loggedInStatus;
  Status get registeredInStatus => _registeredInStatus;

  Future<Map<String, dynamic>> login(
      String username, String password, String email) async {
    var result;

    final Map<String, dynamic> loginData = {
      'username': username,
      'password': password,
      'email': email,
    };

    _loggedInStatus = Status.Authenticating;
    notifyListeners();

    Response response = await post(
      Uri.parse(AppUrl.login),
      body: json.encode(loginData),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200 || response.statusCode == 201) {
      final Map<String, dynamic> responseData = json.decode(response.body);
      var accessToken = responseData['key'];
      Response responseUser = await post(
        Uri.parse(AppUrl.user),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Token ' + accessToken,
        },
      );
      final Map<String, dynamic> userData = json.decode(responseUser.body);
      User authUser = User.fromJson(userData, accessToken);

      UserPreferences().saveUser(authUser);
      _loggedInStatus = Status.LoggedIn;
      notifyListeners();

      result = {'status': true, 'message': 'Successful', 'user': authUser};
    } else {
      _loggedInStatus = Status.NotLoggedIn;
      notifyListeners();
      result = {
        'status': false,
        'message': json.decode(response.body)['non_field_errors']
      };
    }
    return result;
  }

  Future<Map<String, dynamic>> user(String key) async {
    Response response = await post(
      Uri.parse(AppUrl.user),
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Token ' + key,
      },
    );
    final Map<String, dynamic> userData = json.decode(response.body);
    return userData;
  }

  Future<Map<String, dynamic>> register(
    String email,
    String username,
    String password,
    String passwordConfirmation,
  ) async {
    var result;
    final Map<String, dynamic> registrationData = {
      'email': email,
      'username': username,
      'password1': password,
      'password2': passwordConfirmation
    };
    Response response = await post(
      Uri.parse(AppUrl.register),
      body: json.encode(registrationData),
      headers: {'Content-Type': 'application/json'},
    );
    if (response.statusCode == 200 || response.statusCode == 201) {
      result = {
        'status': true,
        'message': 'Successfully registered',
      };
    } else {
      result = {
        'status': false,
        'message': "There is some problem with Registration!!",
        'username': json.decode(response.body)['username'],
        'email': json.decode(response.body)['email'],
      };
    }
    return result;
  }

  Future<Map<String, dynamic>> wrapperFacebook(
    String? accessToken,
  ) async {
    var result;
    final Map<String, dynamic> facebookData = {
      'access_token': accessToken,
    };
    Response response = await post(
      Uri.parse(AppUrl.authFacebook),
      body: json.encode(facebookData),
      headers: {'Content-Type': 'application/json'},
    );
    if (response.statusCode == 200 || response.statusCode == 201) {
      result = {
        'status': true,
        'key': json.decode(response.body)['key'],
        'message': 'Successfully Login',
      };
      return result;
    } else {
      result = {
        'status': false,
        'message': json.decode(response.body)['non_field_errors'],
      };
      return result;
    }
  }

  Future fbAuth(BuildContext context) async {
    final LoginResult result = await FacebookAuth.instance.login(
      permissions: [
        'public_profile',
        'email',
      ],
    );
    try {
      if (result.status == LoginStatus.success) {
        final AccessToken? token = await FacebookAuth.instance.accessToken;
        final String? facebookToken = token?.token;
        print(facebookToken);
        final graphResponse = await get(
          Uri.parse(
            'https://graph.facebook.com/v2.12/me?fields=name,first_name,last_name,email&access_token=${facebookToken}',
          ),
        );
        final profile = json.decode(graphResponse.body);
        print(profile);
        print(profile['email']);
        if (profile["email"] != null) {
          _loggedInStatus = Status.Authenticating;
          notifyListeners();
          Future<Map<String, dynamic>> successfullMessage =
              wrapperFacebook(facebookToken);
          successfullMessage.then(
            (response) {
              print(response);
              this.accessToken = response['key'];
              print(this.accessToken);
            },
          );
          print(this.accessToken);
          Response responseUser = await post(
            Uri.parse(AppUrl.user),
            headers: {
              'Content-Type': 'application/json',
              'Authorization': 'Token ' + accessToken,
            },
          );
          final Map<String, dynamic> userData = json.decode(responseUser.body);
          User authUser = User.fromJson(userData, accessToken);

          UserPreferences().saveUser(authUser);
          _loggedInStatus = Status.LoggedIn;
          notifyListeners();
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (_buildContext) => Home(),
            ),
          );
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                'Successfully signed in with Facebook',
              ),
            ),
          );
        } else {
          _loggedInStatus = Status.NotLoggedIn;
          notifyListeners();
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                'Your FB account is not configured with email!!',
              ),
            ),
          );
        }
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            'Facebook error: ' + e.toString(),
          ),
        ),
      );
      return null;
    }
  }
}
