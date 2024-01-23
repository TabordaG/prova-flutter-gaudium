import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:entregaudium/core/constants/constants.dart';
import 'package:entregaudium/core/errors/errors.dart';
import 'package:entregaudium/core/errors/failure.dart';
import 'package:entregaudium/features/delivery_person/data/models/delivery_person_model.dart';
import 'package:entregaudium/features/delivery_person/domain/entities/delivery_person_entity.dart';

abstract class DeliveryPersonDatasource {
  Future<Either<Failure, DeliveryPersonEntity>> loadDeliveryPersonData();
}

class DeliveryPersonDatasourceImp implements DeliveryPersonDatasource {
  @override
  Future<Either<Failure, DeliveryPersonEntity>> loadDeliveryPersonData() async {
    Dio api = Dio(
      BaseOptions(
        contentType: "application/json",
      ),
    );

    try {
      final response = await api.get(Constants.apiUrl);

      if (response.statusCode == 200) {
        DeliveryPersonEntity deliveryPerson =
            DeliveryPersonModel.fromMap(response.data?['response']).toEntity();

        return Right(deliveryPerson);
      } else {
        return Left(InternalError(
            message:
                response.statusMessage ?? FailureMessage.internalErrorMessage));
      }
    } catch (e) {
      return Left(InternalError(message: FailureMessage.internalErrorMessage));
    }
  }
}
