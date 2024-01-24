import 'package:brasil_fields/brasil_fields.dart';
import 'package:entregaudium/core/constants/constants.dart';
import 'package:entregaudium/features/delivery_person/presentation/viewmodels/delivery_person_viewmodel.dart';
import 'package:entregaudium/features/delivery_person/presentation/widgets/delivery_person_stats.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
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
      body: Observer(builder: (_) {
        if (deliveryPersonViewModel.isLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        return _content();
      }),
    );
  }

  _content() {
    return Column(
      children: [
        _header(),
        _description(),
        _stats(),
      ],
    );
  }

  _stats() {
    return Container(
      color: AppColors.blueText2,
      padding: const EdgeInsets.only(bottom: 24.0),
      child: Row(
        children: [
          DeliveryPersonStats(
            icon: AppImages.deliveryIconPNG,
            value: (deliveryPersonViewModel.deliveryPerson?.totalQtd ?? 0)
                .toString(),
            name: 'Entregas',
          ),
          Container(
            height: 50,
            width: .5,
            color: AppColors.blue2,
          ),
          DeliveryPersonStats(
            icon: AppImages.valueIconPNG,
            value: UtilBrasilFields.obterReal(
                (deliveryPersonViewModel.deliveryPerson?.totalValue ?? 0)),
            name: 'Saldo',
          ),
          Container(
            height: 50,
            width: .5,
            color: AppColors.blue2,
          ),
          DeliveryPersonStats(
            icon: AppImages.ratingIconPNG,
            value: (deliveryPersonViewModel.deliveryPerson?.totalRating ?? 0)
                .toString(),
            name: 'Nota',
          ),
        ],
      ),
    );
  }

  _header() {
    return Expanded(
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
              color: AppColors.blue1,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(
                  24.0,
                  16.0,
                  24.0,
                  20.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      deliveryPersonViewModel.deliveryPerson?.name ??
                          'Nome não informado',
                      style: const TextStyle(
                        fontFamily: 'OpenSans',
                        fontSize: 24.0,
                        color: AppColors.whiteText1,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      deliveryPersonViewModel.deliveryPerson?.role ??
                          'Cargo não informado',
                      style: const TextStyle(
                        fontFamily: 'OpenSans',
                        fontSize: 16.0,
                        color: AppColors.whiteText3,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  _description() {
    return Container(
      width: double.infinity,
      color: AppColors.blueText2,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(24.0, 20.0, 24.0, 35.0),
        child: Text(
          deliveryPersonViewModel.deliveryPerson?.description ??
              'Descrição não informada',
          style: const TextStyle(
            fontFamily: 'OpenSans',
            fontSize: 15.0,
            color: AppColors.whiteText2,
          ),
        ),
      ),
    );
  }

  _appBar() {
    return AppBar(
      backgroundColor: Colors.blue,
      iconTheme: const IconThemeData(color: AppColors.whiteText1),
    );
  }
}
