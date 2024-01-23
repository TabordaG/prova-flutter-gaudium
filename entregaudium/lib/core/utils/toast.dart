import 'package:entregaudium/core/constants/constants.dart';
import 'package:get/get.dart';

toastError({required String? message}) {
  Get.rawSnackbar(
    backgroundColor: AppColors.redError,
    message: message ?? 'Não foi possível realizar essa ação!',
    duration: const Duration(seconds: 3),
  );
}

toastSuccess({required String message}) {
  Get.rawSnackbar(
    backgroundColor: AppColors.greenSuccess,
    message: message,
    duration: const Duration(seconds: 3),
  );
}
