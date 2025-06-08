import 'package:demoapp/constants/storage_keys.dart';
import 'package:get_storage/get_storage.dart';

class StorageHelpers {
  static saveUserName(String name) {
    try {
      final box = GetStorage();
      box.write(StorageKeys.PROFILE_KEY, name);
    } catch (_) {}
  }


   static String? fetchUserName(){
    try {
      final box = GetStorage();
      String name=box.read(StorageKeys.PROFILE_KEY);
      return name;
    } catch (_) {}
    return null;
  }
}
