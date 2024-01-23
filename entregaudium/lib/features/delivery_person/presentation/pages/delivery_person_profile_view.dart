import 'package:entregaudium/core/constants/constants.dart';
import 'package:entregaudium/features/delivery_person/presentation/viewmodels/delivery_person_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class DeliveryPersonProfilePageView extends StatefulWidget {
  const DeliveryPersonProfilePageView({super.key});

  @override
  State<DeliveryPersonProfilePageView> createState() =>
      _DeliveryPersonProfilePageViewState();
}

class _DeliveryPersonProfilePageViewState
    extends State<DeliveryPersonProfilePageView> {
  final DeliveryPersonViewModel deliveryPersonViewModel =
      GetIt.I<DeliveryPersonViewModel>();

  @override
  void initState() {
    deliveryPersonViewModel.loadDeliveryPersonData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // extendBodyBehindAppBar: true,
      appBar: _appBar(),
      body: Column(
        children: [
          Expanded(
            child: Stack(
              fit: StackFit.expand,
              children: [
                const Image(
                  image: AssetImage(AppImages.deliveryManPNG),
                  fit: BoxFit.cover,
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    color: const Color(0xCC2B76C9),
                    child: const Padding(
                      padding: EdgeInsets.fromLTRB(
                        24.0,
                        16.0,
                        24.0,
                        20.0,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Augusto Prado'),
                          Text('Coletor'),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 250,
            width: double.infinity,
            color: const Color(0xFF2E91FF),
          ),
        ],
      ),
    );
  }

  _appBar() {
    return AppBar(
      backgroundColor: Colors.blue,
      iconTheme: const IconThemeData(color: Colors.white),
      // title: const Text(
      //   'Detalhes',
      //   style: TextStyle(color: Colors.white),
      // ),
    );
  }
}
