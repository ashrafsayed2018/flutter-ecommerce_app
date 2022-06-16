import 'package:get/get.dart';

class MyTranslation extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en': {
          'title': 'English',
          'home': 'Home',
          'login': 'Login',
          'register': 'Register',
          'logout': 'Logout',
          'profile': 'Profile',
          'settings': 'Settings',
          'language': 'Language',
          'language_en': 'English',
          'language_ar': 'Arabic',
          "choose your language": "choose your language",
        },
        'ar': {
          'title': 'العربية',
          'home': 'الرئيسية',
          'login': 'تسجيل الدخول',
          'register': 'تسجيل',
          'logout': 'تسجيل الخروج',
          'profile': 'الملف الشخصي',
          'settings': 'الإعدادات',
          'language': 'اللغة',
          'language_en': 'الإنجليزية',
          'language_ar': 'العربية',
          "choose your language": "اختر لغتك",
        },
      };
}
