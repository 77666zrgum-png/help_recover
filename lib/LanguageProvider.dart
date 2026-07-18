import 'package:flutter/material.dart';

class LanguageProvider extends ChangeNotifier {
  // اللغة الافتراضية للتطبيق هي العربية
  Locale _currentLocale = const Locale('ar');

  Locale get currentLocale => _currentLocale;

  // دالة لتغيير اللغة وتنبيه كافة الواجهات لتحديث نفسها فوراً
  void changeLanguage(String languageCode) {
    _currentLocale = Locale(languageCode);
    notifyListeners();
  }
}
