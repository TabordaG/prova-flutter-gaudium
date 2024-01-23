import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:entregaudium/core/domain/connectivity_service.dart';
import 'package:entregaudium/features/delivery_person/data/datasources/delivery_person_datasource.dart';
import 'package:entregaudium/features/delivery_person/data/repository/delivery_person_repository_imp.dart';
import 'package:entregaudium/features/delivery_person/domain/repository/delivery_person_repository.dart';
import 'package:entregaudium/features/delivery_person/domain/usecases/load_data_usecase.dart';
import 'package:entregaudium/features/delivery_person/presentation/viewmodels/delivery_person_viewmodel.dart';
import 'package:entregaudium/features/initial/presentation/viewmodels/home_viewmodel.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.I;

Future<void> initInject() async {
  //core
  sl.registerLazySingleton<Connectivity>(() => Connectivity());
  sl.registerLazySingleton<ConnectivityService>(
      () => ConnectivityServiceImpl(connectivity: sl()));

  // viewmodels
  sl.registerLazySingleton<HomeViewModel>(() => HomeViewModel());
  sl.registerLazySingleton<DeliveryPersonViewModel>(
      () => DeliveryPersonViewModel());

  // datasources
  sl.registerLazySingleton<DeliveryPersonDatasource>(
      () => DeliveryPersonDatasourceImp());

  // repositories
  sl.registerLazySingleton<DeliveryPersonRepository>(
      () => DeliveryPersonRepositoryImp(datasource: sl()));

  // usecases
  sl.registerLazySingleton<LoadDataUsecase>(
      () => LoadDataUsecaseImp(repository: sl(), connectivityService: sl()));
}
