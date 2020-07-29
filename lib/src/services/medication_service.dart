import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:medications/src/api/api.dart';
import 'package:medications/src/api/urls.dart';

class MedicationService {
  Future<Map<String, dynamic>> findByName({
    @required String name,
    @required String token,
    int page,
  }) async {
    assert(name != null);
    if (page == null) page = 1;
    var response = await api.get(ApiUrls.DRUGS_URL,
        queryParameters: {'name': name, 'page': page},
        options: Options(headers: {'Authorization': 'Bearer $token'}));
    return response.data;
  }
}
