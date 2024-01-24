// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

class DeliveryPersonEntity extends Equatable {
  String? name;
  String? role;
  String? description;
  List<HistoricEntity>? historic;
  int? totalQtd;
  double? totalValue;
  double? totalRating;

  DeliveryPersonEntity({
    this.name,
    this.role,
    this.description,
    this.historic,
    this.totalQtd,
    this.totalValue,
    this.totalRating,
  });

  @override
  List<Object?> get props => [
        name,
        role,
        description,
        historic,
        totalQtd,
        totalValue,
        totalRating,
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
