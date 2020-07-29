// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AuthController on AuthControllerBase, Store {
  final _$authUserAtom = Atom(name: 'AuthControllerBase.authUser');

  @override
  UserModel get authUser {
    _$authUserAtom.context.enforceReadPolicy(_$authUserAtom);
    _$authUserAtom.reportObserved();
    return super.authUser;
  }

  @override
  set authUser(UserModel value) {
    _$authUserAtom.context.conditionallyRunInAction(() {
      super.authUser = value;
      _$authUserAtom.reportChanged();
    }, _$authUserAtom, name: '${_$authUserAtom.name}_set');
  }

  final _$isLoadingAtom = Atom(name: 'AuthControllerBase.isLoading');

  @override
  bool get isLoading {
    _$isLoadingAtom.context.enforceReadPolicy(_$isLoadingAtom);
    _$isLoadingAtom.reportObserved();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.context.conditionallyRunInAction(() {
      super.isLoading = value;
      _$isLoadingAtom.reportChanged();
    }, _$isLoadingAtom, name: '${_$isLoadingAtom.name}_set');
  }

  final _$errorAtom = Atom(name: 'AuthControllerBase.error');

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

  final _$setLoadingAsyncAction = AsyncAction('setLoading');

  @override
  Future<void> setLoading(bool loading) {
    return _$setLoadingAsyncAction.run(() => super.setLoading(loading));
  }

  final _$signInAsyncAction = AsyncAction('signIn');

  @override
  Future<void> signIn(String username, String password) {
    return _$signInAsyncAction.run(() => super.signIn(username, password));
  }

  final _$signOutAsyncAction = AsyncAction('signOut');

  @override
  Future<void> signOut(BuildContext context) {
    return _$signOutAsyncAction.run(() => super.signOut(context));
  }
}
