// ignore_for_file: invalid_use_of_visible_for_testing_member

import 'package:mobile/utils.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppController {
  static final AppController _instance = AppController._internal();
  factory AppController() => _instance;
  AppController._internal();

  SharedPreferences? _prefs;

  Future<void> init() async {
    SharedPreferences.setMockInitialValues({});
    _prefs = await SharedPreferences.getInstance();
    reset();
  }

  String? getRandomUnreadJoke() {
    List<int> unreadIndexes = [];
    for (int i = 0; i < jokeContents.length; i++) {
      if (!isRead(i)) {
        unreadIndexes.add(i);
      }
    }
    if (unreadIndexes.isEmpty) {
      return null;
    }
    unreadIndexes.shuffle();
    _setRead(unreadIndexes.first);
    return jokeContents[unreadIndexes.first];
  }

  bool isRead(int index) {
    return _prefs?.getBool('$_todayString-$index') ?? false;
  }

  Future<void> _setRead(int index) async {
    await _prefs?.setBool('$_todayString-$index', true);
  }

  String get _todayString {
    final now = DateTime.now();
    return '${now.year}_${now.month}_${now.day}';
  }

  void reset() {
    _prefs?.clear();
  }
}
