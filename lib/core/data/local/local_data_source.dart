import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:met2ashara_app/features/auth/data/models/auth_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'pref_keys.dart';

abstract class LocalDataSource {
  Future<void> saveAuthData(AuthModel authModel);
  AuthModel? getAuthData();
  void clearUserData();
}

@LazySingleton(as: LocalDataSource)
class LocalDataSourceImpl implements LocalDataSource {
  final SharedPreferences sharedPreferences;

  LocalDataSourceImpl(this.sharedPreferences);

  @override
  Future<void> saveAuthData(AuthModel authModel) async {
    await sharedPreferences.setString(PrefKeys.auth, jsonEncode(authModel.toJson()));
  }

  @override
  AuthModel? getAuthData() {
    final authData = sharedPreferences.getString(PrefKeys.auth);
    if (authData != null) {
      return AuthModel.fromJson(jsonDecode(authData));
    }
    return null;
  }

  @override
  void clearUserData() {
    sharedPreferences.remove(PrefKeys.auth);
  }
}
