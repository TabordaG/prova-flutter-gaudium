// ignore_for_file: must_be_immutable

import 'package:entregaudium/features/delivery_person/domain/entities/delivery_person_entity.dart';

class DeliveryPersonModel extends DeliveryPersonEntity {
  DeliveryPersonModel({
    String? name,
    String? role,
    String? description,
    List<HistoricEntity>? historic,
  }) : super(
          name: name,
          role: role,
          description: description,
          historic: historic,
        );

  DeliveryPersonModel copyWith({
    String? name,
    String? role,
    String? description,
    List<HistoricEntity>? historic,
  }) {
    return DeliveryPersonModel(
      name: name ?? this.name,
      role: role ?? this.role,
      description: description ?? this.description,
      historic: historic ?? this.historic,
    );
  }

  factory DeliveryPersonModel.fromMap(Map<String, dynamic> map) {
    return DeliveryPersonModel(
      name: map['nome'],
      role: map['cargo'],
      description: map['descricao'],
      historic: map['historico'] != null
          ? List.from(map['historico']
              .map((item) => HistoricModel.fromMap(item).toEntity())
              .toList())
          : [],
    );
  }

  DeliveryPersonEntity toEntity() {
    return DeliveryPersonEntity(
      name: name,
      role: role,
      description: description,
      historic: historic,
    );
  }

  factory DeliveryPersonModel.fromEntity(DeliveryPersonEntity entity) {
    return DeliveryPersonModel(
      name: entity.name,
      role: entity.role,
      description: entity.description,
      historic: entity.historic,
    );
  }
}

class HistoricModel extends HistoricEntity {
  HistoricModel({
    String? whenDate,
    int? qtd,
    double? value,
    int? rating,
  }) : super(
          whenDate: whenDate,
          qtd: qtd,
          value: value,
          rating: rating,
        );

  HistoricModel copyWith({
    String? whenDate,
    int? qtd,
    double? value,
    int? rating,
  }) {
    return HistoricModel(
      whenDate: whenDate ?? this.whenDate,
      qtd: qtd ?? this.qtd,
      value: value ?? this.value,
      rating: rating ?? this.rating,
    );
  }

  factory HistoricModel.fromMap(Map<String, dynamic> map) {
    return HistoricModel(
      whenDate: map['quando'],
      qtd: map['qtd'],
      value: map['valor'] != null ? map['valor'] * 1.0 : 0.0,
      rating: map['avaliacao'],
    );
  }

  HistoricEntity toEntity() {
    return HistoricEntity(
      whenDate: whenDate,
      qtd: qtd,
      value: value,
      rating: rating,
    );
  }

  factory HistoricModel.fromEntity(HistoricEntity entity) {
    return HistoricModel(
      whenDate: entity.whenDate,
      qtd: entity.qtd,
      value: entity.value,
      rating: entity.rating,
    );
  }
}
