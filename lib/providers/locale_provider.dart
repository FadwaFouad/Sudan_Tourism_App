import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocaleProvider with ChangeNotifier {
  Locale _value = Locale('en');

  get value => _value ?? Locale('en');

  fetchLoacle() async {
    final prefs = await SharedPreferences.getInstance();
    if (prefs.getString('lang_code') == null) {
      _value = Locale('en');
      return;
    }
    _value = Locale(prefs.getString('lang_code'));
  }

  setLocale(String localeCode) async {
    this._value = Locale(localeCode);
    notifyListeners();

    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('lang_code', localeCode);
  }
}
