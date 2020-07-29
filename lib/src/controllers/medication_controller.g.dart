// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'medication_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$MedicationController on MedicationControllerBase, Store {
  final _$isSearchLoadingAtom =
      Atom(name: 'MedicationControllerBase.isSearchLoading');

  @override
  bool get isSearchLoading {
    _$isSearchLoadingAtom.context.enforceReadPolicy(_$isSearchLoadingAtom);
    _$isSearchLoadingAtom.reportObserved();
    return super.isSearchLoading;
  }

  @override
  set isSearchLoading(bool value) {
    _$isSearchLoadingAtom.context.conditionallyRunInAction(() {
      super.isSearchLoading = value;
      _$isSearchLoadingAtom.reportChanged();
    }, _$isSearchLoadingAtom, name: '${_$isSearchLoadingAtom.name}_set');
  }

  final _$isPaginationLoadingAtom =
      Atom(name: 'MedicationControllerBase.isPaginationLoading');

  @override
  bool get isPaginationLoading {
    _$isPaginationLoadingAtom.context
        .enforceReadPolicy(_$isPaginationLoadingAtom);
    _$isPaginationLoadingAtom.reportObserved();
    return super.isPaginationLoading;
  }

  @override
  set isPaginationLoading(bool value) {
    _$isPaginationLoadingAtom.context.conditionallyRunInAction(() {
      super.isPaginationLoading = value;
      _$isPaginationLoadingAtom.reportChanged();
    }, _$isPaginationLoadingAtom,
        name: '${_$isPaginationLoadingAtom.name}_set');
  }

  final _$medicationPageAtom =
      Atom(name: 'MedicationControllerBase.medicationPage');

  @override
  int get medicationPage {
    _$medicationPageAtom.context.enforceReadPolicy(_$medicationPageAtom);
    _$medicationPageAtom.reportObserved();
    return super.medicationPage;
  }

  @override
  set medicationPage(int value) {
    _$medicationPageAtom.context.conditionallyRunInAction(() {
      super.medicationPage = value;
      _$medicationPageAtom.reportChanged();
    }, _$medicationPageAtom, name: '${_$medicationPageAtom.name}_set');
  }

  final _$medicationLastPageAtom =
      Atom(name: 'MedicationControllerBase.medicationLastPage');

  @override
  int get medicationLastPage {
    _$medicationLastPageAtom.context
        .enforceReadPolicy(_$medicationLastPageAtom);
    _$medicationLastPageAtom.reportObserved();
    return super.medicationLastPage;
  }

  @override
  set medicationLastPage(int value) {
    _$medicationLastPageAtom.context.conditionallyRunInAction(() {
      super.medicationLastPage = value;
      _$medicationLastPageAtom.reportChanged();
    }, _$medicationLastPageAtom, name: '${_$medicationLastPageAtom.name}_set');
  }

  final _$medicationListAtom =
      Atom(name: 'MedicationControllerBase.medicationList');

  @override
  List<MedicationModel> get medicationList {
    _$medicationListAtom.context.enforceReadPolicy(_$medicationListAtom);
    _$medicationListAtom.reportObserved();
    return super.medicationList;
  }

  @override
  set medicationList(List<MedicationModel> value) {
    _$medicationListAtom.context.conditionallyRunInAction(() {
      super.medicationList = value;
      _$medicationListAtom.reportChanged();
    }, _$medicationListAtom, name: '${_$medicationListAtom.name}_set');
  }

  final _$errorAtom = Atom(name: 'MedicationControllerBase.error');

  @override
  Exception get error {
    _$errorAtom.context.enforceReadPolicy(_$errorAtom);
    _$errorAtom.reportObserved();
    return super.error;
  }

  @override
  set error(Exception value) {
    _$errorAtom.context.conditionallyRunInAction(() {
      super.error = value;
      _$errorAtom.reportChanged();
    }, _$errorAtom, name: '${_$errorAtom.name}_set');
  }

  final _$findAllByNameAsyncAction = AsyncAction('findAllByName');

  @override
  Future<void> findAllByName(
      {String name, BuildContext context, bool loadMore}) {
    return _$findAllByNameAsyncAction.run(() =>
        super.findAllByName(name: name, context: context, loadMore: loadMore));
  }
}
