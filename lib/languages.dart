import 'package:get/get_navigation/src/root/internacionalization.dart';

class Languages extends Translations {
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
    'en_US': {'message': "what is your name", 'name': "Rahul P"},
    'hi_IN': {'message': "आपका क्या नाम है?", 'name': "राहुल"},
    'ml_IN': {'message': "എന്താണ് നിന്റെ പേര്?", 'name': "രാഹുൽ"},
  };
}
