// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_person_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$DeliveryPersonViewModel on DeliveryPersonViewModelBase, Store {
  late final _$isLoadingAtom =
      Atom(name: 'DeliveryPersonViewModelBase.isLoading', context: context);

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  late final _$deliveryPersonAtom = Atom(
      name: 'DeliveryPersonViewModelBase.deliveryPerson', context: context);

  @override
  DeliveryPersonEntity? get deliveryPerson {
    _$deliveryPersonAtom.reportRead();
    return super.deliveryPerson;
  }

  @override
  set deliveryPerson(DeliveryPersonEntity? value) {
    _$deliveryPersonAtom.reportWrite(value, super.deliveryPerson, () {
      super.deliveryPerson = value;
    });
  }

  late final _$loadDeliveryPersonDataAsyncAction = AsyncAction(
      'DeliveryPersonViewModelBase.loadDeliveryPersonData',
      context: context);

  @override
  Future loadDeliveryPersonData() {
    return _$loadDeliveryPersonDataAsyncAction
        .run(() => super.loadDeliveryPersonData());
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading},
deliveryPerson: ${deliveryPerson}
    ''';
  }
}
