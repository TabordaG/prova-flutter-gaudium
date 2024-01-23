import 'package:dartz/dartz.dart';
import 'package:entregaudium/core/domain/connectivity_service.dart';
import 'package:entregaudium/core/errors/errors.dart';
import 'package:entregaudium/core/errors/failure.dart';
import 'package:entregaudium/features/delivery_person/domain/entities/delivery_person_entity.dart';
import 'package:entregaudium/features/delivery_person/domain/repository/delivery_person_repository.dart';

abstract class LoadDataUsecase {
  Future<Either<Failure, DeliveryPersonEntity>> call();
}

class LoadDataUsecaseImp implements LoadDataUsecase {
  DeliveryPersonRepository repository;
  ConnectivityService connectivityService;

  LoadDataUsecaseImp({
    required this.repository,
    required this.connectivityService,
  });

  @override
  Future<Either<Failure, DeliveryPersonEntity>> call() async {
    final isOnline = await connectivityService.isOnline();

    if (!isOnline) {
      return Left(
          ConnectionError(message: FailureMessage.connectionErrorMessage));
    }

    return repository.loadDeliveryPersonData();
  }
}
