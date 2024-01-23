import 'package:dio/dio.dart';
import '../../../core/constants/constants.dart';

Dio api = Dio(
  BaseOptions(
    baseUrl: Constants.apiUrl,
    contentType: "application/json",
  ),
);

Dio get dio {
  Dio dio = Dio();
  // set base url
  dio.options.baseUrl = Constants.apiUrl;
  return dio;
}
