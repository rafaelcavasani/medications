import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:medications/src/controllers/auth_controller.dart';
import 'package:medications/src/models/medication_model.dart';
import 'package:medications/src/models/user_model.dart';
import 'package:medications/src/pages/login_page.dart';
import 'package:medications/src/services/medication_service.dart';
import 'package:mobx/mobx.dart';
import 'package:provider/provider.dart';

part 'medication_controller.g.dart';

class MedicationController = MedicationControllerBase
    with _$MedicationController;

abstract class MedicationControllerBase with Store {
  final _medicationService = MedicationService();

  @observable
  bool isSearchLoading = false;
  @observable
  bool isPaginationLoading = false;
  @observable
  int medicationPage = 1;
  @observable
  int medicationLastPage = 1;
  @observable
  List<MedicationModel> medicationList;
  @observable
  Exception error;

  var logger = Logger(
    printer: PrettyPrinter(),
  );

  @action
  Future<void> findAllByName(
      {String name, BuildContext context, bool loadMore}) async {
    if (this.medicationPage == null || !loadMore) this.medicationPage = 1;
    if (loadMore) {
      this.isPaginationLoading = true;
      this.medicationPage += 1;
      if (this.medicationPage == this.medicationLastPage) return;
    } else {
      this.isSearchLoading = true;
    }
    try {
      final _authController =
          Provider.of<AuthController>(context, listen: false);
      UserModel user = _authController.authUser;
      String token = user.token;
      Map<String, dynamic> result = await _medicationService.findByName(
          name: name, token: token, page: this.medicationPage);
      int lastPage = result['last_page'];
      List<MedicationModel> list = (result['data'] as List)
          .map((model) => MedicationModel.fromJson(model))
          .toList();
      this.error = null;
      this.medicationLastPage = lastPage;
      if (loadMore) {
        List<MedicationModel> newList = this.medicationList + list;
        this.medicationList = newList;
      } else {
        this.medicationList = list;
      }
      this.isSearchLoading = false;
      this.isPaginationLoading = false;
    } catch (e) {
      if (e is DioError) {
        if (e.response.statusCode == 403) {
          this.logger.e('Access Denied');
          Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (BuildContext context) => LoginPage()));
        }
      }
      this.logger.e('Error: ${e.toString()}');
      this.error = e;
      this.medicationList = List<MedicationModel>();
      this.isSearchLoading = false;
      this.isPaginationLoading = false;
      this.medicationPage = null;
      this.medicationLastPage = null;
    }
  }
}
