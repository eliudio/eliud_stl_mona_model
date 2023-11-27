/*
       _ _           _ 
      | (_)         | |
   ___| |_ _   _  __| |
  / _ \ | | | | |/ _` |
 |  __/ | | |_| | (_| |
  \___|_|_|\__,_|\__,_|
                       
 
 mona_style_attributes_form_bloc.dart
                       
 This code is generated. This is read only. Don't touch!

*/

import 'dart:async';

import 'package:bloc/bloc.dart';

import 'package:eliud_core_helpers/etc/enums.dart';

import 'package:eliud_core_main/model/rgb_model.dart';

import 'package:eliud_core_helpers/helpers/string_validator.dart';

import 'package:eliud_stl_mona_model/model/abstract_repository_singleton.dart';
import 'package:eliud_core_main/model/model_export.dart';
import 'package:eliud_stl_mona_model/model/model_export.dart';

import 'package:eliud_stl_mona_model/model/mona_style_attributes_form_event.dart';
import 'package:eliud_stl_mona_model/model/mona_style_attributes_form_state.dart';

class MonaStyleAttributesFormBloc
    extends Bloc<MonaStyleAttributesFormEvent, MonaStyleAttributesFormState> {
  final FormAction? formAction;
  final String? appId;

  MonaStyleAttributesFormBloc(this.appId, {this.formAction})
      : super(MonaStyleAttributesFormUninitialized()) {
    on<InitialiseNewMonaStyleAttributesFormEvent>((event, emit) {
      MonaStyleAttributesFormLoaded loaded = MonaStyleAttributesFormLoaded(
          value: MonaStyleAttributesModel(
        documentID: "",
        appId: "",
        formGroupTitleColor: RgbModel(r: 255, g: 0, b: 0, opacity: 1.00),
        formFieldTextColor: RgbModel(r: 255, g: 255, b: 255, opacity: 1.00),
        formFieldHeaderColor: RgbModel(r: 255, g: 0, b: 0, opacity: 1.00),
        formFieldFocusColor: RgbModel(r: 255, g: 0, b: 0, opacity: 1.00),
        listTextItemColor: RgbModel(r: 255, g: 255, b: 255, opacity: 1.00),
        floatingButtonForegroundColor:
            RgbModel(r: 255, g: 255, b: 255, opacity: 1.00),
        floatingButtonBackgroundColor:
            RgbModel(r: 255, g: 0, b: 255, opacity: 1.00),
        dividerColor: RgbModel(r: 255, g: 0, b: 0, opacity: 1.00),
        appBarIconColor: RgbModel(r: 255, g: 255, b: 255, opacity: 1.00),
        appBarSelectedIconColor:
            RgbModel(r: 255, g: 255, b: 255, opacity: 1.00),
        appBarMenuBackgroundColor: RgbModel(r: 64, g: 6, b: 64, opacity: 1.00),
        backgroundColorHomeMenu:
            RgbModel(r: 255, g: 255, b: 255, opacity: 1.00),
        routeAnimationDuration: 1000,
        dialogBackgroundColor: RgbModel(r: 255, g: 0, b: 0, opacity: 1.00),
        dialogSeperatorColor: RgbModel(r: 255, g: 0, b: 0, opacity: 1.00),
        popupMenuButtonColor: RgbModel(r: 255, g: 0, b: 0, opacity: 1.00),
        textBubbleBackgroundColor: RgbModel(r: 255, g: 0, b: 0, opacity: 1.00),
        dropdownButtonnColor: RgbModel(r: 255, g: 0, b: 0, opacity: 1.00),
        listTileColor: RgbModel(r: 255, g: 0, b: 0, opacity: 1.00),
      ));
      emit(loaded);
    });

    on<InitialiseMonaStyleAttributesFormEvent>((event, emit) async {
      // Need to re-retrieve the document from the repository so that I get all associated types
      MonaStyleAttributesFormLoaded loaded = MonaStyleAttributesFormLoaded(
          value: await monaStyleAttributesRepository(appId: appId)!
              .get(event.value!.documentID));
      emit(loaded);
    });
    on<InitialiseMonaStyleAttributesFormNoLoadEvent>((event, emit) async {
      MonaStyleAttributesFormLoaded loaded =
          MonaStyleAttributesFormLoaded(value: event.value);
      emit(loaded);
    });
    MonaStyleAttributesModel? newValue;
    on<ChangedMonaStyleAttributesDocumentID>((event, emit) async {
      if (state is MonaStyleAttributesFormInitialized) {
        final currentState = state as MonaStyleAttributesFormInitialized;
        newValue = currentState.value!.copyWith(documentID: event.value);
        if (formAction == FormAction.addAction) {
          emit(await _isDocumentIDValid(event.value, newValue!));
        } else {
          emit(SubmittableMonaStyleAttributesForm(value: newValue));
        }
      }
    });
    on<ChangedMonaStyleAttributesFormBackground>((event, emit) async {
      if (state is MonaStyleAttributesFormInitialized) {
        final currentState = state as MonaStyleAttributesFormInitialized;
        newValue = currentState.value!.copyWith(formBackground: event.value);
        emit(SubmittableMonaStyleAttributesForm(value: newValue));
      }
    });
    on<ChangedMonaStyleAttributesAppBackground>((event, emit) async {
      if (state is MonaStyleAttributesFormInitialized) {
        final currentState = state as MonaStyleAttributesFormInitialized;
        newValue = currentState.value!.copyWith(appBackground: event.value);
        emit(SubmittableMonaStyleAttributesForm(value: newValue));
      }
    });
    on<ChangedMonaStyleAttributesFormGroupTitleColor>((event, emit) async {
      if (state is MonaStyleAttributesFormInitialized) {
        final currentState = state as MonaStyleAttributesFormInitialized;
        newValue =
            currentState.value!.copyWith(formGroupTitleColor: event.value);
        emit(SubmittableMonaStyleAttributesForm(value: newValue));
      }
    });
    on<ChangedMonaStyleAttributesFormFieldTextColor>((event, emit) async {
      if (state is MonaStyleAttributesFormInitialized) {
        final currentState = state as MonaStyleAttributesFormInitialized;
        newValue =
            currentState.value!.copyWith(formFieldTextColor: event.value);
        emit(SubmittableMonaStyleAttributesForm(value: newValue));
      }
    });
    on<ChangedMonaStyleAttributesFormFieldHeaderColor>((event, emit) async {
      if (state is MonaStyleAttributesFormInitialized) {
        final currentState = state as MonaStyleAttributesFormInitialized;
        newValue =
            currentState.value!.copyWith(formFieldHeaderColor: event.value);
        emit(SubmittableMonaStyleAttributesForm(value: newValue));
      }
    });
    on<ChangedMonaStyleAttributesFormFieldFocusColor>((event, emit) async {
      if (state is MonaStyleAttributesFormInitialized) {
        final currentState = state as MonaStyleAttributesFormInitialized;
        newValue =
            currentState.value!.copyWith(formFieldFocusColor: event.value);
        emit(SubmittableMonaStyleAttributesForm(value: newValue));
      }
    });
    on<ChangedMonaStyleAttributesListBackground>((event, emit) async {
      if (state is MonaStyleAttributesFormInitialized) {
        final currentState = state as MonaStyleAttributesFormInitialized;
        newValue = currentState.value!.copyWith(listBackground: event.value);
        emit(SubmittableMonaStyleAttributesForm(value: newValue));
      }
    });
    on<ChangedMonaStyleAttributesListTextItemColor>((event, emit) async {
      if (state is MonaStyleAttributesFormInitialized) {
        final currentState = state as MonaStyleAttributesFormInitialized;
        newValue = currentState.value!.copyWith(listTextItemColor: event.value);
        emit(SubmittableMonaStyleAttributesForm(value: newValue));
      }
    });
    on<ChangedMonaStyleAttributesFloatingButtonForegroundColor>(
        (event, emit) async {
      if (state is MonaStyleAttributesFormInitialized) {
        final currentState = state as MonaStyleAttributesFormInitialized;
        newValue = currentState.value!
            .copyWith(floatingButtonForegroundColor: event.value);
        emit(SubmittableMonaStyleAttributesForm(value: newValue));
      }
    });
    on<ChangedMonaStyleAttributesFloatingButtonBackgroundColor>(
        (event, emit) async {
      if (state is MonaStyleAttributesFormInitialized) {
        final currentState = state as MonaStyleAttributesFormInitialized;
        newValue = currentState.value!
            .copyWith(floatingButtonBackgroundColor: event.value);
        emit(SubmittableMonaStyleAttributesForm(value: newValue));
      }
    });
    on<ChangedMonaStyleAttributesDividerColor>((event, emit) async {
      if (state is MonaStyleAttributesFormInitialized) {
        final currentState = state as MonaStyleAttributesFormInitialized;
        newValue = currentState.value!.copyWith(dividerColor: event.value);
        emit(SubmittableMonaStyleAttributesForm(value: newValue));
      }
    });
    on<ChangedMonaStyleAttributesTopicContainerBackground>((event, emit) async {
      if (state is MonaStyleAttributesFormInitialized) {
        final currentState = state as MonaStyleAttributesFormInitialized;
        newValue =
            currentState.value!.copyWith(topicContainerBackground: event.value);
        emit(SubmittableMonaStyleAttributesForm(value: newValue));
      }
    });
    on<ChangedMonaStyleAttributesActionContainerBackground>(
        (event, emit) async {
      if (state is MonaStyleAttributesFormInitialized) {
        final currentState = state as MonaStyleAttributesFormInitialized;
        newValue = currentState.value!
            .copyWith(actionContainerBackground: event.value);
        emit(SubmittableMonaStyleAttributesForm(value: newValue));
      }
    });
    on<ChangedMonaStyleAttributesAppBarBG>((event, emit) async {
      if (state is MonaStyleAttributesFormInitialized) {
        final currentState = state as MonaStyleAttributesFormInitialized;
        newValue = currentState.value!.copyWith(appBarBG: event.value);
        emit(SubmittableMonaStyleAttributesForm(value: newValue));
      }
    });
    on<ChangedMonaStyleAttributesAppBarIconColor>((event, emit) async {
      if (state is MonaStyleAttributesFormInitialized) {
        final currentState = state as MonaStyleAttributesFormInitialized;
        newValue = currentState.value!.copyWith(appBarIconColor: event.value);
        emit(SubmittableMonaStyleAttributesForm(value: newValue));
      }
    });
    on<ChangedMonaStyleAttributesAppBarSelectedIconColor>((event, emit) async {
      if (state is MonaStyleAttributesFormInitialized) {
        final currentState = state as MonaStyleAttributesFormInitialized;
        newValue =
            currentState.value!.copyWith(appBarSelectedIconColor: event.value);
        emit(SubmittableMonaStyleAttributesForm(value: newValue));
      }
    });
    on<ChangedMonaStyleAttributesAppBarMenuBackgroundColor>(
        (event, emit) async {
      if (state is MonaStyleAttributesFormInitialized) {
        final currentState = state as MonaStyleAttributesFormInitialized;
        newValue = currentState.value!
            .copyWith(appBarMenuBackgroundColor: event.value);
        emit(SubmittableMonaStyleAttributesForm(value: newValue));
      }
    });
    on<ChangedMonaStyleAttributesBottomNavigationBarBG>((event, emit) async {
      if (state is MonaStyleAttributesFormInitialized) {
        final currentState = state as MonaStyleAttributesFormInitialized;
        newValue =
            currentState.value!.copyWith(bottomNavigationBarBG: event.value);
        emit(SubmittableMonaStyleAttributesForm(value: newValue));
      }
    });
    on<ChangedMonaStyleAttributesDrawerBG>((event, emit) async {
      if (state is MonaStyleAttributesFormInitialized) {
        final currentState = state as MonaStyleAttributesFormInitialized;
        newValue = currentState.value!.copyWith(drawerBG: event.value);
        emit(SubmittableMonaStyleAttributesForm(value: newValue));
      }
    });
    on<ChangedMonaStyleAttributesDrawerHeaderBG>((event, emit) async {
      if (state is MonaStyleAttributesFormInitialized) {
        final currentState = state as MonaStyleAttributesFormInitialized;
        newValue = currentState.value!.copyWith(drawerHeaderBG: event.value);
        emit(SubmittableMonaStyleAttributesForm(value: newValue));
      }
    });
    on<ChangedMonaStyleAttributesProfileDrawerBG>((event, emit) async {
      if (state is MonaStyleAttributesFormInitialized) {
        final currentState = state as MonaStyleAttributesFormInitialized;
        newValue = currentState.value!.copyWith(profileDrawerBG: event.value);
        emit(SubmittableMonaStyleAttributesForm(value: newValue));
      }
    });
    on<ChangedMonaStyleAttributesProfileDrawerHeaderBG>((event, emit) async {
      if (state is MonaStyleAttributesFormInitialized) {
        final currentState = state as MonaStyleAttributesFormInitialized;
        newValue =
            currentState.value!.copyWith(profileDrawerHeaderBG: event.value);
        emit(SubmittableMonaStyleAttributesForm(value: newValue));
      }
    });
    on<ChangedMonaStyleAttributesBackgroundColorHomeMenu>((event, emit) async {
      if (state is MonaStyleAttributesFormInitialized) {
        final currentState = state as MonaStyleAttributesFormInitialized;
        newValue =
            currentState.value!.copyWith(backgroundColorHomeMenu: event.value);
        emit(SubmittableMonaStyleAttributesForm(value: newValue));
      }
    });
    on<ChangedMonaStyleAttributesH1>((event, emit) async {
      if (state is MonaStyleAttributesFormInitialized) {
        final currentState = state as MonaStyleAttributesFormInitialized;
        newValue = currentState.value!.copyWith(h1: event.value);
        emit(SubmittableMonaStyleAttributesForm(value: newValue));
      }
    });
    on<ChangedMonaStyleAttributesH2>((event, emit) async {
      if (state is MonaStyleAttributesFormInitialized) {
        final currentState = state as MonaStyleAttributesFormInitialized;
        newValue = currentState.value!.copyWith(h2: event.value);
        emit(SubmittableMonaStyleAttributesForm(value: newValue));
      }
    });
    on<ChangedMonaStyleAttributesH3>((event, emit) async {
      if (state is MonaStyleAttributesFormInitialized) {
        final currentState = state as MonaStyleAttributesFormInitialized;
        newValue = currentState.value!.copyWith(h3: event.value);
        emit(SubmittableMonaStyleAttributesForm(value: newValue));
      }
    });
    on<ChangedMonaStyleAttributesH4>((event, emit) async {
      if (state is MonaStyleAttributesFormInitialized) {
        final currentState = state as MonaStyleAttributesFormInitialized;
        newValue = currentState.value!.copyWith(h4: event.value);
        emit(SubmittableMonaStyleAttributesForm(value: newValue));
      }
    });
    on<ChangedMonaStyleAttributesH5>((event, emit) async {
      if (state is MonaStyleAttributesFormInitialized) {
        final currentState = state as MonaStyleAttributesFormInitialized;
        newValue = currentState.value!.copyWith(h5: event.value);
        emit(SubmittableMonaStyleAttributesForm(value: newValue));
      }
    });
    on<ChangedMonaStyleAttributesTextFieldHeader>((event, emit) async {
      if (state is MonaStyleAttributesFormInitialized) {
        final currentState = state as MonaStyleAttributesFormInitialized;
        newValue = currentState.value!.copyWith(textFieldHeader: event.value);
        emit(SubmittableMonaStyleAttributesForm(value: newValue));
      }
    });
    on<ChangedMonaStyleAttributesFontText>((event, emit) async {
      if (state is MonaStyleAttributesFormInitialized) {
        final currentState = state as MonaStyleAttributesFormInitialized;
        newValue = currentState.value!.copyWith(fontText: event.value);
        emit(SubmittableMonaStyleAttributesForm(value: newValue));
      }
    });
    on<ChangedMonaStyleAttributesFontSmallText>((event, emit) async {
      if (state is MonaStyleAttributesFormInitialized) {
        final currentState = state as MonaStyleAttributesFormInitialized;
        newValue = currentState.value!.copyWith(fontSmallText: event.value);
        emit(SubmittableMonaStyleAttributesForm(value: newValue));
      }
    });
    on<ChangedMonaStyleAttributesFontHighlight1>((event, emit) async {
      if (state is MonaStyleAttributesFormInitialized) {
        final currentState = state as MonaStyleAttributesFormInitialized;
        newValue = currentState.value!.copyWith(fontHighlight1: event.value);
        emit(SubmittableMonaStyleAttributesForm(value: newValue));
      }
    });
    on<ChangedMonaStyleAttributesFontHighlight2>((event, emit) async {
      if (state is MonaStyleAttributesFormInitialized) {
        final currentState = state as MonaStyleAttributesFormInitialized;
        newValue = currentState.value!.copyWith(fontHighlight2: event.value);
        emit(SubmittableMonaStyleAttributesForm(value: newValue));
      }
    });
    on<ChangedMonaStyleAttributesFontLink>((event, emit) async {
      if (state is MonaStyleAttributesFormInitialized) {
        final currentState = state as MonaStyleAttributesFormInitialized;
        newValue = currentState.value!.copyWith(fontLink: event.value);
        emit(SubmittableMonaStyleAttributesForm(value: newValue));
      }
    });
    on<ChangedMonaStyleAttributesRouteBuilder>((event, emit) async {
      if (state is MonaStyleAttributesFormInitialized) {
        final currentState = state as MonaStyleAttributesFormInitialized;
        newValue = currentState.value!.copyWith(routeBuilder: event.value);
        emit(SubmittableMonaStyleAttributesForm(value: newValue));
      }
    });
    on<ChangedMonaStyleAttributesRouteAnimationDuration>((event, emit) async {
      if (state is MonaStyleAttributesFormInitialized) {
        final currentState = state as MonaStyleAttributesFormInitialized;
        if (isInt(event.value)) {
          newValue = currentState.value!
              .copyWith(routeAnimationDuration: int.parse(event.value!));
          emit(SubmittableMonaStyleAttributesForm(value: newValue));
        } else {
          newValue = currentState.value!.copyWith(routeAnimationDuration: 0);
          emit(RouteAnimationDurationMonaStyleAttributesFormError(
              message: "Value should be a number", value: newValue));
        }
      }
    });
    on<ChangedMonaStyleAttributesDialogBackgroundColor>((event, emit) async {
      if (state is MonaStyleAttributesFormInitialized) {
        final currentState = state as MonaStyleAttributesFormInitialized;
        newValue =
            currentState.value!.copyWith(dialogBackgroundColor: event.value);
        emit(SubmittableMonaStyleAttributesForm(value: newValue));
      }
    });
    on<ChangedMonaStyleAttributesDialogSeperatorColor>((event, emit) async {
      if (state is MonaStyleAttributesFormInitialized) {
        final currentState = state as MonaStyleAttributesFormInitialized;
        newValue =
            currentState.value!.copyWith(dialogSeperatorColor: event.value);
        emit(SubmittableMonaStyleAttributesForm(value: newValue));
      }
    });
    on<ChangedMonaStyleAttributesPopupMenuButtonColor>((event, emit) async {
      if (state is MonaStyleAttributesFormInitialized) {
        final currentState = state as MonaStyleAttributesFormInitialized;
        newValue =
            currentState.value!.copyWith(popupMenuButtonColor: event.value);
        emit(SubmittableMonaStyleAttributesForm(value: newValue));
      }
    });
    on<ChangedMonaStyleAttributesTextBubbleBackgroundColor>(
        (event, emit) async {
      if (state is MonaStyleAttributesFormInitialized) {
        final currentState = state as MonaStyleAttributesFormInitialized;
        newValue = currentState.value!
            .copyWith(textBubbleBackgroundColor: event.value);
        emit(SubmittableMonaStyleAttributesForm(value: newValue));
      }
    });
    on<ChangedMonaStyleAttributesDropdownButtonnColor>((event, emit) async {
      if (state is MonaStyleAttributesFormInitialized) {
        final currentState = state as MonaStyleAttributesFormInitialized;
        newValue =
            currentState.value!.copyWith(dropdownButtonnColor: event.value);
        emit(SubmittableMonaStyleAttributesForm(value: newValue));
      }
    });
    on<ChangedMonaStyleAttributesListTileColor>((event, emit) async {
      if (state is MonaStyleAttributesFormInitialized) {
        final currentState = state as MonaStyleAttributesFormInitialized;
        newValue = currentState.value!.copyWith(listTileColor: event.value);
        emit(SubmittableMonaStyleAttributesForm(value: newValue));
      }
    });
  }

  DocumentIDMonaStyleAttributesFormError error(
          String message, MonaStyleAttributesModel newValue) =>
      DocumentIDMonaStyleAttributesFormError(message: message, value: newValue);

  Future<MonaStyleAttributesFormState> _isDocumentIDValid(
      String? value, MonaStyleAttributesModel newValue) async {
    if (value == null) {
      return Future.value(error("Provide value for documentID", newValue));
    }
    if (value.isEmpty) {
      return Future.value(error("Provide value for documentID", newValue));
    }
    Future<MonaStyleAttributesModel?> findDocument =
        monaStyleAttributesRepository(appId: appId)!.get(value);
    return await findDocument.then((documentFound) {
      if (documentFound == null) {
        return SubmittableMonaStyleAttributesForm(value: newValue);
      } else {
        return error("Invalid documentID: already exists", newValue);
      }
    });
  }
}
