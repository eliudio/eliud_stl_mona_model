/*
       _ _           _ 
      | (_)         | |
   ___| |_ _   _  __| |
  / _ \ | | | | |/ _` |
 |  __/ | | |_| | (_| |
  \___|_|_|\__,_|\__,_|
                       
 
 model/component_registry.dart
                       
 This code is generated. This is read only. Don't touch!

*/

import '../model/internal_component.dart';
import 'abstract_repository_singleton.dart';
import 'package:eliud_core_main/apis/apis.dart';

/* 
 * Component registry contains a list of components
 */
class ComponentRegistry {
  /* 
   * Initialise the component registry
   */
  init() {
    Apis.apis().getRegistryApi().addInternalComponents('eliud_stl_mona_model', [
      "monaStyleAttributess",
    ]);

    Apis.apis().getRegistryApi().register(
        componentName: "eliud_stl_mona_model_internalWidgets",
        componentConstructor: ListComponentFactory());
    Apis.apis()
        .getRegistryApi()
        .addComponentSpec('eliud_stl_mona_model', 'mona-style', []);
    Apis.apis().getRegistryApi().registerRetrieveRepository(
        'eliud_stl_mona_model',
        'monaStyleAttributess',
        ({String? appId}) => monaStyleAttributesRepository(appId: appId)!);
  }
}
