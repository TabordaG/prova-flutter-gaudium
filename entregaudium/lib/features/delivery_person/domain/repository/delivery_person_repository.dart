import 'package:dartz/dartz.dart';
import 'package:entregaudium/core/errors/failure.dart';
import 'package:entregaudium/features/delivery_person/domain/entities/delivery_person_entity.dart';

abstract class DeliveryPersonRepository {
  Future<Either<Failure, DeliveryPersonEntity>> loadDeliveryPersonData();
}
