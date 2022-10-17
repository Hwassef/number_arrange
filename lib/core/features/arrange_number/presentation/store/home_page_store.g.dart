// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_page_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomePageStore on _HomePageStore, Store {
  Computed<bool>? _$isAddEmployeeButtonEnabledComputed;

  @override
  bool get isAddEmployeeButtonEnabled =>
      (_$isAddEmployeeButtonEnabledComputed ??= Computed<bool>(
              () => super.isAddEmployeeButtonEnabled,
              name: '_HomePageStore.isAddEmployeeButtonEnabled'))
          .value;
  Computed<bool>? _$isArrangeNumbersButtonEnabledComputed;

  @override
  bool get isArrangeNumbersButtonEnabled =>
      (_$isArrangeNumbersButtonEnabledComputed ??= Computed<bool>(
              () => super.isArrangeNumbersButtonEnabled,
              name: '_HomePageStore.isArrangeNumbersButtonEnabled'))
          .value;

  late final _$employeeIDAtom =
      Atom(name: '_HomePageStore.employeeID', context: context);

  @override
  String? get employeeID {
    _$employeeIDAtom.reportRead();
    return super.employeeID;
  }

  @override
  set employeeID(String? value) {
    _$employeeIDAtom.reportWrite(value, super.employeeID, () {
      super.employeeID = value;
    });
  }

  late final _$employeeIDsAtom =
      Atom(name: '_HomePageStore.employeeIDs', context: context);

  @override
  ObservableList<String> get employeeIDs {
    _$employeeIDsAtom.reportRead();
    return super.employeeIDs;
  }

  @override
  set employeeIDs(ObservableList<String> value) {
    _$employeeIDsAtom.reportWrite(value, super.employeeIDs, () {
      super.employeeIDs = value;
    });
  }

  late final _$arrangedEmployeeIDsAtom =
      Atom(name: '_HomePageStore.arrangedEmployeeIDs', context: context);

  @override
  ObservableList<String> get arrangedEmployeeIDs {
    _$arrangedEmployeeIDsAtom.reportRead();
    return super.arrangedEmployeeIDs;
  }

  @override
  set arrangedEmployeeIDs(ObservableList<String> value) {
    _$arrangedEmployeeIDsAtom.reportWrite(value, super.arrangedEmployeeIDs, () {
      super.arrangedEmployeeIDs = value;
    });
  }

  late final _$_HomePageStoreActionController =
      ActionController(name: '_HomePageStore', context: context);

  @override
  void employeeIDOnChanged(String value) {
    final _$actionInfo = _$_HomePageStoreActionController.startAction(
        name: '_HomePageStore.employeeIDOnChanged');
    try {
      return super.employeeIDOnChanged(value);
    } finally {
      _$_HomePageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String? employeeIdentificatorValidator() {
    final _$actionInfo = _$_HomePageStoreActionController.startAction(
        name: '_HomePageStore.employeeIdentificatorValidator');
    try {
      return super.employeeIdentificatorValidator();
    } finally {
      _$_HomePageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addEmployeeId({required String employeeID}) {
    final _$actionInfo = _$_HomePageStoreActionController.startAction(
        name: '_HomePageStore.addEmployeeId');
    try {
      return super.addEmployeeId(employeeID: employeeID);
    } finally {
      _$_HomePageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void arrangeEmployeeIDs() {
    final _$actionInfo = _$_HomePageStoreActionController.startAction(
        name: '_HomePageStore.arrangeEmployeeIDs');
    try {
      return super.arrangeEmployeeIDs();
    } finally {
      _$_HomePageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
employeeID: ${employeeID},
employeeIDs: ${employeeIDs},
arrangedEmployeeIDs: ${arrangedEmployeeIDs},
isAddEmployeeButtonEnabled: ${isAddEmployeeButtonEnabled},
isArrangeNumbersButtonEnabled: ${isArrangeNumbersButtonEnabled}
    ''';
  }
}
