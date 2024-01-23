import 'package:dartz/dartz.dart';
import 'package:entregaudium/core/errors/failure.dart';
import 'package:entregaudium/features/delivery_person/data/datasources/delivery_person_datasource.dart';
import 'package:entregaudium/features/delivery_person/domain/entities/delivery_person_entity.dart';
import 'package:entregaudium/features/delivery_person/domain/repository/delivery_person_repository.dart';

class DeliveryPersonRepositoryImp implements DeliveryPersonRepository {
  DeliveryPersonDatasource datasource;
  DeliveryPersonRepositoryImp({
    required this.datasource,
  });

  @override
  Future<Either<Failure, DeliveryPersonEntity>> loadDeliveryPersonData() async {
    return datasource.loadDeliveryPersonData();
  }
}
