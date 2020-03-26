// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeControllerBase, Store {
  Computed<List<IncidentModel>> _$listFielteredComputed;

  @override
  List<IncidentModel> get listFieltered => (_$listFielteredComputed ??=
          Computed<List<IncidentModel>>(() => super.listFieltered))
      .value;

  final _$hintTextAtom = Atom(name: '_HomeControllerBase.hintText');

  @override
  String get hintText {
    _$hintTextAtom.context.enforceReadPolicy(_$hintTextAtom);
    _$hintTextAtom.reportObserved();
    return super.hintText;
  }

  @override
  set hintText(String value) {
    _$hintTextAtom.context.conditionallyRunInAction(() {
      super.hintText = value;
      _$hintTextAtom.reportChanged();
    }, _$hintTextAtom, name: '${_$hintTextAtom.name}_set');
  }

  final _$ongNamesAtom = Atom(name: '_HomeControllerBase.ongNames');

  @override
  ObservableFuture<List<String>> get ongNames {
    _$ongNamesAtom.context.enforceReadPolicy(_$ongNamesAtom);
    _$ongNamesAtom.reportObserved();
    return super.ongNames;
  }

  @override
  set ongNames(ObservableFuture<List<String>> value) {
    _$ongNamesAtom.context.conditionallyRunInAction(() {
      super.ongNames = value;
      _$ongNamesAtom.reportChanged();
    }, _$ongNamesAtom, name: '${_$ongNamesAtom.name}_set');
  }

  final _$totalOfIncidentsAtom =
      Atom(name: '_HomeControllerBase.totalOfIncidents');

  @override
  ObservableFuture<List<String>> get totalOfIncidents {
    _$totalOfIncidentsAtom.context.enforceReadPolicy(_$totalOfIncidentsAtom);
    _$totalOfIncidentsAtom.reportObserved();
    return super.totalOfIncidents;
  }

  @override
  set totalOfIncidents(ObservableFuture<List<String>> value) {
    _$totalOfIncidentsAtom.context.conditionallyRunInAction(() {
      super.totalOfIncidents = value;
      _$totalOfIncidentsAtom.reportChanged();
    }, _$totalOfIncidentsAtom, name: '${_$totalOfIncidentsAtom.name}_set');
  }

  final _$incidentsAtom = Atom(name: '_HomeControllerBase.incidents');

  @override
  ObservableFuture<List<IncidentModel>> get incidents {
    _$incidentsAtom.context.enforceReadPolicy(_$incidentsAtom);
    _$incidentsAtom.reportObserved();
    return super.incidents;
  }

  @override
  set incidents(ObservableFuture<List<IncidentModel>> value) {
    _$incidentsAtom.context.conditionallyRunInAction(() {
      super.incidents = value;
      _$incidentsAtom.reportChanged();
    }, _$incidentsAtom, name: '${_$incidentsAtom.name}_set');
  }

  final _$_HomeControllerBaseActionController =
      ActionController(name: '_HomeControllerBase');

  @override
  dynamic getOngNames() {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction();
    try {
      return super.getOngNames();
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic getTotalofIncidents() {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction();
    try {
      return super.getTotalofIncidents();
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic fetchIncidents() {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction();
    try {
      return super.fetchIncidents();
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string =
        'hintText: ${hintText.toString()},ongNames: ${ongNames.toString()},totalOfIncidents: ${totalOfIncidents.toString()},incidents: ${incidents.toString()},listFieltered: ${listFieltered.toString()}';
    return '{$string}';
  }
}
