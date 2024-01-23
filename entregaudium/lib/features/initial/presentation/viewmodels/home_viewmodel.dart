import 'package:entregaudium/core/constants/constants.dart';
import 'package:entregaudium/core/utils/get_bytes_from_asset.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:mobx/mobx.dart';

part 'home_viewmodel.g.dart';

class HomeViewModel = HomeViewModelBase with _$HomeViewModel;

abstract class HomeViewModelBase with Store {
  @observable
  BitmapDescriptor markerIcon = BitmapDescriptor.defaultMarker;

  @observable
  Map<String, Marker> markers = {};

  @observable
  LatLng center = const LatLng(-22.904093, -43.175293);

  @action
  loadMarkerIcon() async {
    if (markerIcon == BitmapDescriptor.defaultMarker) {
      await getBytesFromAsset(AppImages.pinUserWhitePNG, 100).then((value) {
        markerIcon = BitmapDescriptor.fromBytes(value!);
      });
    }
  }

  @action
  setMarker() async {
    if (markerIcon == BitmapDescriptor.defaultMarker) {
      return;
    }

    var marker = Marker(
      markerId: const MarkerId('user'),
      position: const LatLng(-22.904093, -43.175293),
      icon: markerIcon,
    );
    markers['user'] = marker;
    markers = Map.from(markers);
  }
}
