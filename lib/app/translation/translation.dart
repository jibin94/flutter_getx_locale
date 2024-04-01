import 'package:flutter_locale/app/app_strings.dart';

abstract class AppTranslation {
  static Map<String, Map<String, String>> translationsKeys = {
    "en_US": enUS,
    "bn": bn,
    "te": te,
    "ur": ur,
    "hi": hi,
    "ta": ta,
    "es": es,
    "mr": mr,
    "ru": ru,
    "fr": fr,
    "ar": ar,
  };
}

final Map<String, String> enUS = {
  AppStrings.chooseLanguage: 'Choose language',
  AppStrings.greetingsText: 'Hello, How are you?',
  AppStrings.day: "Awesome day...",
  AppStrings.loginUserName: "UserName",
  AppStrings.password: "Password",
  AppStrings.login: "Login"
};

final Map<String, String> bn = {
  AppStrings.chooseLanguage: 'ভাষা নির্বাচন করুন',
  AppStrings.greetingsText: 'হ্যালো, আপনি কেমন আছেন?',
  AppStrings.day: "সন্ত্রস্ত দিন...",
  AppStrings.loginUserName: "ব্যবহারকারীর নাম",
  AppStrings.password: "পাসওয়ার্ড",
  AppStrings.login: "প্রবেশ করুন"
};
final Map<String, String> te = {
  AppStrings.chooseLanguage: 'భాషను ఎంచుకోండి',
  AppStrings.greetingsText: 'హలో, మీరు ఎలా ఉన్నారు?',
  AppStrings.day: "గొప్ప రోజు...",
  AppStrings.loginUserName: "వినియోగదారు పేరు",
  AppStrings.password: "పాస్వర్డ్",
  AppStrings.login: "ప్రవేశించండి"
};
final Map<String, String> ur = {
  AppStrings.chooseLanguage: 'زبان کا انتخاب کریں۔',
  AppStrings.greetingsText: 'ہیلو آپ کیسے ہیں؟',
  AppStrings.day: "بہت اچھا دن ...",
  AppStrings.loginUserName: "صارف کا نام",
  AppStrings.password: "پاس ورڈ",
  AppStrings.login: "لاگ ان کریں"
};
final Map<String, String> hi = {
  AppStrings.chooseLanguage: 'भाषा चुनें',
  AppStrings.greetingsText: 'नमस्ते आप कैसे हैं?',
  AppStrings.day: "शानदार दिन...",
  AppStrings.loginUserName: "उपयोगकर्ता नाम",
  AppStrings.password: "पासवर्ड",
  AppStrings.login: "পलॉग इन करें"
};

final Map<String, String> ta = {
  AppStrings.chooseLanguage: 'மொழியை தேர்வு செய்யவும்',
  AppStrings.greetingsText: "வணக்கம் எப்படி இருக்கிறாய்?",
  AppStrings.day: "அற்புதமான நாள் ...",
  AppStrings.loginUserName: "பயனர்பெயர்",
  AppStrings.password: "கடவுச்சொல்",
  AppStrings.login: "உள்நுழைய"
};
final Map<String, String> es = {
  AppStrings.chooseLanguage: 'Elige lengua',
  AppStrings.greetingsText: "¿Hola como estas?",
  AppStrings.day: "Día impresionante...",
  AppStrings.loginUserName: "Nombre de usuario",
  AppStrings.password: "Contraseña",
  AppStrings.login: "Acceso"
};
final Map<String, String> mr = {
  AppStrings.chooseLanguage: 'भाषा निवडा',
  AppStrings.greetingsText: "हॅलो, कसे आहात",
  AppStrings.day: "अप्रतिम दिवस ...",
  AppStrings.loginUserName: "वापरकर्तानाव",
  AppStrings.password: "पासवर्ड",
  AppStrings.login: "लॉगिन करा"
};
final Map<String, String> ru = {
  AppStrings.chooseLanguage: 'Выберите язык',
  AppStrings.greetingsText: "Привет как дела?",
  AppStrings.day: "Замечательный день...",
  AppStrings.loginUserName: "Имя пользователя",
  AppStrings.password: "Пароль",
  AppStrings.login: "Авторизоваться"
};
final Map<String, String> fr = {
  AppStrings.chooseLanguage: 'Choisissez la langue',
  AppStrings.greetingsText: "Salut comment allez-vous?",
  AppStrings.day: "Super journée...",
  AppStrings.loginUserName: "Nom d'utilisateur",
  AppStrings.password: "Mot de passe",
  AppStrings.login: "Se connecter"
};

final Map<String, String> ar = {
  AppStrings.chooseLanguage: 'اختر اللغة',
  AppStrings.greetingsText: 'مرحبا، كيف حالك؟',
  AppStrings.day: "يوم رائع..",
  AppStrings.loginUserName: "اسم المستخدم",
  AppStrings.password: "كلمة المرور",
  AppStrings.login: "تسجيل الدخول"
};
