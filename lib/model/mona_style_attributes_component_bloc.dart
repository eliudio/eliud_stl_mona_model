/*
       _ _           _ 
      | (_)         | |
   ___| |_ _   _  __| |
  / _ \ | | | | |/ _` |
 |  __/ | | |_| | (_| |
  \___|_|_|\__,_|\__,_|
                       
 
 mona_style_attributes_component_bloc.dart
                       
 This code is generated. This is read only. Don't touch!

*/

import 'dart:async';
import 'package:bloc/bloc.dart';

import 'package:eliud_stl_mona_model/model/mona_style_attributes_component_event.dart';
import 'package:eliud_stl_mona_model/model/mona_style_attributes_component_state.dart';
import 'package:eliud_stl_mona_model/model/mona_style_attributes_repository.dart';

class MonaStyleAttributesComponentBloc extends Bloc<
    MonaStyleAttributesComponentEvent, MonaStyleAttributesComponentState> {
  final MonaStyleAttributesRepository? monaStyleAttributesRepository;
  StreamSubscription? _monaStyleAttributesSubscription;

  void _mapLoadMonaStyleAttributesComponentUpdateToState(String documentId) {
    _monaStyleAttributesSubscription?.cancel();
    _monaStyleAttributesSubscription =
        monaStyleAttributesRepository!.listenTo(documentId, (value) {
      if (value != null) {
        add(MonaStyleAttributesComponentUpdated(value: value));
      }
    });
  }

  /*
   * Construct MonaStyleAttributesComponentBloc
   */
  MonaStyleAttributesComponentBloc({this.monaStyleAttributesRepository})
      : super(MonaStyleAttributesComponentUninitialized()) {
    on<FetchMonaStyleAttributesComponent>((event, emit) {
      _mapLoadMonaStyleAttributesComponentUpdateToState(event.id!);
    });
    on<MonaStyleAttributesComponentUpdated>((event, emit) {
      emit(MonaStyleAttributesComponentLoaded(value: event.value));
    });
  }

  /*
   * Close the MonaStyleAttributesComponentBloc
   */
  @override
  Future<void> close() {
    _monaStyleAttributesSubscription?.cancel();
    return super.close();
  }
}
