import 'package:shared_preferences/shared_preferences.dart';

class LocalStorage{


  late SharedPreferences _prefs;

   //------------------SharedPreference Instance create -------
  Future<LocalStorage> init() async{
    _prefs = await SharedPreferences.getInstance();
    return this;
  }

  //-----------Key as Constants ------
  static const String _keyIntroSeen ="introSeen";
  static const String _keyLoggedIn ="isLoggedIn";

  static const String _keyUserName ="userName";
  static const String _keyUserEmail ="userEmail";
  static const String _keyUserId ="userId";

  static const String _keyUserProfile ="isMale";






  //----------------Getter ----------
  bool get isIntro => _prefs.getBool(_keyIntroSeen)??false;
  bool get isLoggedIn => _prefs.getBool(_keyLoggedIn)??false;

  String get userName =>_prefs.getString(_keyUserName)??"Unknown User";
  String get userEmail => _prefs.getString(_keyUserEmail)??"Unknown User";
  String get userId => _prefs.getString(_keyUserId)??"0";

  bool get userProfile => _prefs.getBool(_keyUserProfile)??true;



  // //----------------Setter ---------
  Future<void> setIntroSeen(bool value) async =>
      await _prefs.setBool(_keyIntroSeen, value);

  Future<void> setLoggedIn(bool value) async =>
      await _prefs.setBool(_keyLoggedIn, value);

  Future<void> setUserName(String name) async =>
      await _prefs.setString(_keyUserName, name);

  Future<void> setUserEmail(String email) async =>
      await _prefs.setString(_keyUserEmail, email);

  Future<void> setUserId(String id) async =>
  await _prefs.setString(_keyUserId, id);


  Future<void> setUserProfile(bool isMale) async =>
  await _prefs.setBool(_keyUserProfile, isMale);
  
  
  
  //----------------------Clear user info------
  Future<void> clearUser() async{
    await _prefs.remove(_keyUserName);
    await _prefs.remove(_keyUserEmail);
    await setLoggedIn(false);
  }

}