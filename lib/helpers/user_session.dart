part of 'helpers.dart';

class UserSessionHelper {
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  void create(id) async {
    final prefs = await _prefs;
    prefs.setString('user-id', id);
  }

  void clear() async {
    final prefs = await _prefs;
    prefs.remove('user-id');
  }

  Future<String?> getUserId(id) async {
    final prefs = await _prefs;
    return prefs.getString('user-id');
  }

  Future<bool> isContainUser() async {
    final prefs = await _prefs;
    return prefs.containsKey('user-id');
  }
}
