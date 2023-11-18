import 'package:get/get.dart';
import 'package:renti_host/view/screens/select_language/english.dart';
import 'package:renti_host/view/screens/select_language/spanish.dart';

class Languages extends Translations{
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
    "en_US" : english,
    "es_MX" : spanish
  };
}