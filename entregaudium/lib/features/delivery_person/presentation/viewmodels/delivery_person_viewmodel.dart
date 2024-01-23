import 'package:entregaudium/core/utils/toast.dart';
import 'package:entregaudium/features/delivery_person/domain/entities/delivery_person_entity.dart';
import 'package:entregaudium/features/delivery_person/domain/usecases/load_data_usecase.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';

part 'delivery_person_viewmodel.g.dart';

class DeliveryPersonViewModel = DeliveryPersonViewModelBase
    with _$DeliveryPersonViewModel;

abstract class DeliveryPersonViewModelBase with Store {
  @observable
  bool isLoading = false;

  @observable
  DeliveryPersonEntity? deliveryPerson;

  @action
  loadDeliveryPersonData() async {
    isLoading = true;
    final LoadDataUsecase usecase = GetIt.I<LoadDataUsecase>();

    var response = await usecase.call();

    response.fold(
      (l) {
        toastError(message: l.message);
      },
      (r) {
        deliveryPerson = r;
      },
    );
    isLoading = false;
  }
}
