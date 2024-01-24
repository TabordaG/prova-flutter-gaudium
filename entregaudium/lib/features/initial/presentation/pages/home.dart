import 'package:entregaudium/config/routes/routes.dart';
import 'package:entregaudium/core/constants/constants.dart';
import 'package:entregaudium/features/initial/presentation/viewmodels/home_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({super.key});

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  final HomeViewModel homeViewModel = GetIt.I<HomeViewModel>();
  late GoogleMapController mapController;

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  void initState() {
    homeViewModel.loadMarkerIcon().then((value) => homeViewModel.setMarker());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    homeViewModel.setMarker();
    return Scaffold(
      appBar: _appBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: _floatingButton(),
      body: _mapBody(),
    );
  }

  _mapBody() {
    return Observer(builder: (_) {
      return GoogleMap(
        onMapCreated: _onMapCreated,
        initialCameraPosition: CameraPosition(
          target: homeViewModel.center,
          zoom: 14.0,
        ),
        markers: homeViewModel.markers.values.toSet(),
      );
    });
  }

  _floatingButton() {
    return FloatingActionButton(
      backgroundColor: AppColors.blueStrong,
      onPressed: () => Get.toNamed(Routes.deliveryPersonProfile),
      child: const Icon(
        Icons.person,
        color: AppColors.blackStrong,
        size: 38,
      ),
    );
  }

  _appBar() {
    return AppBar(
      backgroundColor: Colors.blue,
      title: const Text(
        HomeString.homeTitle,
        style: TextStyle(color: AppColors.whiteText1),
      ),
    );
  }
}
