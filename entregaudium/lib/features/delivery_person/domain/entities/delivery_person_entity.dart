// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

class DeliveryPersonEntity extends Equatable {
  String? name;
  String? role;
  String? description;
  List<HistoricEntity>? historic;

  DeliveryPersonEntity({
    this.name,
    this.role,
    this.description,
    this.historic,
  });

  @override
  List<Object?> get props => [
        name,
        role,
        description,
        historic,
      ];
}

class HistoricEntity extends Equatable {
  String? whenDate;
  int? qtd;
  double? value;
  int? rating;

  HistoricEntity({
    this.whenDate,
    this.qtd,
    this.value,
    this.rating,
  });

  @override
  List<Object?> get props => [
        whenDate,
        qtd,
        value,
        rating,
      ];
}
