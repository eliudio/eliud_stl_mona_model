/*
       _ _           _ 
      | (_)         | |
   ___| |_ _   _  __| |
  / _ \ | | | | |/ _` |
 |  __/ | | |_| | (_| |
  \___|_|_|\__,_|\__,_|
                       
 
 model/abstract_repository_singleton.dart
                       
 This code is generated. This is read only. Don't touch!

*/

import '../model/mona_style_attributes_repository.dart';
import 'package:eliud_core_main/tools/etc/member_collection_info.dart';

MonaStyleAttributesRepository? monaStyleAttributesRepository({String? appId}) =>
    AbstractRepositorySingleton.singleton.monaStyleAttributesRepository(appId);

abstract class AbstractRepositorySingleton {
  static List<MemberCollectionInfo> collections = [];
  static late AbstractRepositorySingleton singleton;

  MonaStyleAttributesRepository? monaStyleAttributesRepository(String? appId);

  void flush(String? appId) {
    monaStyleAttributesRepository(appId)!.flush();
  }
}
