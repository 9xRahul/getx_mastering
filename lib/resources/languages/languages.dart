import 'package:get/get_navigation/src/root/internacionalization.dart';

class Languages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    'en_US': {
      "email_hint": "Enter Email",
      "welcome": "Welcome back",
      "login": "Login",
      "emailhint": "Enter Email",
      "passwordhint": "Enter password",
      "email_error": "Email must be filled",
      "email": "Email",
      "password": "password",
    },
    'ml_IN': {
      "email_hint": "ഇമെയിൽ നൽകുക",
      "welcome": "വീണ്ടും സ്വാഗതം",
      "login": "ലോഗിൻ",
      "emailhint": "ഇമെയിൽ നൽകുക",
      "passwordhint": "പാസ്‌വേഡ് നൽകുക",
    },
  };
}
