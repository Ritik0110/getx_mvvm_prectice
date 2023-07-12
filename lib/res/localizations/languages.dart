import 'package:get/get_navigation/src/root/internacionalization.dart';

class Languages extends Translations{
  @override

  Map<String, Map<String, String>> get keys => {
    "en_US" :{
      "Hello":"Hello",
      "How are you?":"How are you?"
    },
    "hn_IN":{
      "Hello":"नमस्ते",
      "How are you?":"क्या हाल है?"
    }
  };

}