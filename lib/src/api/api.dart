import 'package:dio/dio.dart';
import 'package:medications/src/api/urls.dart';

BaseOptions _apiOptions = BaseOptions(
  baseUrl: ApiUrls.BASE_URL,
  connectTimeout: 8000,
  receiveTimeout: 5000,
  responseType: ResponseType.json,
);

Dio api = Dio(_apiOptions);
