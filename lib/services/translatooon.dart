import 'package:get/get.dart';

import 'translations/en_US.dart';
import 'translations/kr_KR.dart';

class Messages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
   // lang/ru_ru.dart
    'en_US': enUS, // lang/en_us.dart
    'kr_KR': krKR, // lang/en_us.dart
  };

}