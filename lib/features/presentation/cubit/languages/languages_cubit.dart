import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutterhub/features/domain/entities/models.dart';
import 'package:flutterhub/features/domain/usecases/languages_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../configs/constants.dart';

part 'languages_state.dart';
part 'languages_cubit.freezed.dart';
part 'languages_cubit.g.dart';

class LanguagesCubit extends Cubit<LanguagesState> {
  LanguagesCubit(
    this.languagesUsecase,
  ) : super(const LanguagesState.initial());

  final LanguagesUsecase languagesUsecase;

  List<RepositoryLanguage> _languages = [];
  RepositoryLanguage? _selectedLanguage;

  void fetchLanguages() async {
    emit(const LanguagesState.fetchInProgress());
    try {
      final result = await languagesUsecase(() => null);
      result.fold(
        (l) => emit(LanguagesState.fetchError(
          message: l.messageText(),
        )),
        (r) {
          _languages = r;
          emit(r.isEmpty
              ? const LanguagesState.fetchEmpty()
              : LanguagesState.fetchSuccess(
                  items: _languages,
                  selected: _selectedLanguage,
                ));
        },
      );
    } catch (e) {
      debugPrint(e.toString());
      emit(const LanguagesState.fetchError(message: kUnexpectedError));
    }
  }

  void searchLanguages(String query) async {
    List<RepositoryLanguage> items = _languages;
    if (query.isNotEmpty) {
      items = _languages
          .where((language) =>
              (language.urlParam ?? '').contains(query.toLowerCase()))
          .toList();
    }
    emit(items.isEmpty
        ? const LanguagesState.fetchEmpty()
        : LanguagesState.fetchSuccess(
            items: items,
            selected: _selectedLanguage,
          ));
  }

  void selectLanguage(RepositoryLanguage? language) {
    _selectedLanguage = language;
    emit(LanguagesState.fetchSuccess(
      items: _languages,
      selected: _selectedLanguage,
    ));
  }
}
