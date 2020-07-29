import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:medications/src/components/custom_app_bar.dart';
import 'package:medications/src/components/custom_main_menu.dart';
import 'package:medications/src/components/custom_search_return_text.dart';
import 'package:medications/src/components/custom_text_field.dart';
import 'package:medications/src/controllers/medication_controller.dart';
import 'package:medications/src/models/medication_model.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';

import 'medication_detail_page.dart';

class MedicationPage extends StatefulWidget {
  @override
  _MedicationPageState createState() => _MedicationPageState();
}

class _MedicationPageState extends State<MedicationPage> {
  final _nameController = TextEditingController();
  final _medicationController = MedicationController();
  Timer _debounce;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: Text('Medicamentos')),
      drawer: CustomMainMenu(),
      body: Container(
        padding: EdgeInsets.all(8),
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(20),
              child: Container(
                child: CustomTextField(
                  controller: _nameController,
                  onSubmitted: _onSubmited,
                  labelText: 'Buscar Medicamento',
                  prefixIcon: Icon(Icons.search),
                  colorText: Colors.grey,
                  colorEnabledBorder: Colors.grey,
                  colorFocusedBorder: Colors.blueGrey,
                  colorStyle: Colors.blueGrey,
                ),
              ),
            ),
            Observer(
              builder: (context) {
                if (_medicationController.isSearchLoading) {
                  return Expanded(
                    child: Center(
                      child: CircularProgressIndicator(),
                    ),
                  );
                }

                if (_medicationController.error != null) {
                  return CustomSearchReturnText(
                      text: _medicationController.error.toString() ??
                          "Não foi possível buscar os medicamentos");
                }
                List<MedicationModel> medicationList =
                    _medicationController.medicationList;

                if (medicationList == null) {
                  return CustomSearchReturnText(text: "Realize a busca");
                }

                if (medicationList.isEmpty) {
                  return CustomSearchReturnText(
                      text: "Nenhum medicamento encontrado");
                }

                return Expanded(
                    child: NotificationListener<ScrollNotification>(
                        onNotification: (ScrollNotification scrollInfo) {
                          if (scrollInfo.metrics.pixels ==
                              scrollInfo.metrics.maxScrollExtent) {
                            if (!_medicationController.isPaginationLoading)
                              _onScrollNotification();
                          }
                          return true;
                        },
                        child: ModalProgressHUD(
                          inAsyncCall:
                              _medicationController.isPaginationLoading,
                          child: ListView.separated(
                            shrinkWrap: true,
                            itemCount: medicationList.length,
                            itemBuilder: (context, item) {
                              return ListTile(
                                onTap: () => Navigator.of(context).push(
                                    MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                            MedicationDetailPage(
                                                medicationList[item]))),
                                title: Text(
                                  medicationList[item].name.toString(),
                                  style: TextStyle(fontSize: 18),
                                ),
                              );
                            },
                            separatorBuilder:
                                (BuildContext context, int index) => Divider(
                              color: Colors.grey,
                            ),
                          ),
                        )));
              },
            ),
          ],
        ),
      ),
    );
  }

  _onSubmited(String text) {
    String name = _nameController.text;
    if (name != "") {
      _medicationController.findAllByName(
          name: name, context: context, loadMore: false);
    }
  }

  _onScrollNotification() {
    if (_debounce?.isActive ?? false) _debounce.cancel();
    _debounce = Timer(const Duration(milliseconds: 1000), () {
      String name = _nameController.text;
      _medicationController.findAllByName(
          name: name, context: context, loadMore: true);
    });
  }
}
