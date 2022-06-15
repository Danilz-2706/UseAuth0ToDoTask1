import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/services.dart';
import 'package:flutter_appauth/flutter_appauth.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:test113/helpers/constants.dart';

class AuthService {
  static final AuthService instance = AuthService._internal();

  factory AuthService() {
    return instance;
  }

  AuthService._internal();
  final FlutterAppAuth appAuth = FlutterAppAuth();
  final FlutterSecureStorage secureStorage = const FlutterSecureStorage();


  /// -----------------------------------
  ///  1- instantiate appAuth
  /// -----------------------------------

  /// -----------------------------------
  ///  2- instantiate secure storage
  /// -----------------------------------

  /// -----------------------------------
  ///  3- init
  /// -----------------------------------

  /// -----------------------------------
  ///  4- login
   login() async {
    final authorizationTokenRequest = AuthorizationTokenRequest(
      AUTH0_CLIENT_ID,
      AUTH0_REDIRECT_URI,
      issuer: AUTH0_ISSUER,
      scopes: ['openid', 'profile', 'offline_access', 'email'],
    );
    final AuthorizationTokenResponse? result =
        await appAuth.authorizeAndExchangeCode(
      authorizationTokenRequest,
    );
    print(result);
    
  }
  

  /// -----------------------------------
  ///  5- setProfileAndIdToken
  /// -----------------------------------

  /// -----------------------------------
  ///  6- logout
  /// -----------------------------------

  /// -----------------------------------
  ///  7- parseIdToken
  /// -----------------------------------

  /// -----------------------------------
  ///  8- getUserDetails
  /// -----------------------------------

  /// -----------------------------------
  ///  9- availableCustomerService
  /// -----------------------------------

}
