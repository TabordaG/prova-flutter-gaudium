// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeViewModel on HomeViewModelBase, Store {
  late final _$markerIconAtom =
      Atom(name: 'HomeViewModelBase.markerIcon', context: context);

  @override
  BitmapDescriptor get markerIcon {
    _$markerIconAtom.reportRead();
    return super.markerIcon;
  }

  @override
  set markerIcon(BitmapDescriptor value) {
    _$markerIconAtom.reportWrite(value, super.markerIcon, () {
      super.markerIcon = value;
    });
  }

  late final _$markersAtom =
      Atom(name: 'HomeViewModelBase.markers', context: context);

  @override
  Map<String, Marker> get markers {
    _$markersAtom.reportRead();
    return super.markers;
  }

  @override
  set markers(Map<String, Marker> value) {
    _$markersAtom.reportWrite(value, super.markers, () {
      super.markers = value;
    });
  }

  late final _$centerAtom =
      Atom(name: 'HomeViewModelBase.center', context: context);

  @override
  LatLng get center {
    _$centerAtom.reportRead();
    return super.center;
  }

  @override
  set center(LatLng value) {
    _$centerAtom.reportWrite(value, super.center, () {
      super.center = value;
    });
  }

  late final _$loadMarkerIconAsyncAction =
      AsyncAction('HomeViewModelBase.loadMarkerIcon', context: context);

  @override
  Future loadMarkerIcon() {
    return _$loadMarkerIconAsyncAction.run(() => super.loadMarkerIcon());
  }

  late final _$setMarkerAsyncAction =
      AsyncAction('HomeViewModelBase.setMarker', context: context);

  @override
  Future setMarker() {
    return _$setMarkerAsyncAction.run(() => super.setMarker());
  }

  @override
  String toString() {
    return '''
markerIcon: ${markerIcon},
markers: ${markers},
center: ${center}
    ''';
  }
}
