import 'package:entregaudium/core/constants/constants.dart';
import 'package:flutter/material.dart';

class DeliveryPersonStats extends StatelessWidget {
  final String icon;
  final String value;
  final String name;
  const DeliveryPersonStats({
    super.key,
    required this.icon,
    required this.value,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Image(
            image: AssetImage(icon),
            height: 22,
          ),
          Text(
            value,
            style: const TextStyle(
              fontSize: 22.0,
              color: AppColors.whiteText1,
            ),
          ),
          Text(
            name,
            style: const TextStyle(
              fontSize: 13.0,
              color: AppColors.whiteText2,
            ),
          ),
        ],
      ),
    );
  }
}
