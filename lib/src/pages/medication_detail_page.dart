import 'package:flutter/material.dart';

import 'package:medications/src/components/custom_app_bar.dart';
import 'package:medications/src/components/custom_list_tile.dart';
import 'package:medications/src/components/custom_main_menu.dart';
import 'package:medications/src/models/medication_model.dart';

class MedicationDetailPage extends StatefulWidget {
  final MedicationModel medication;
  MedicationDetailPage(this.medication);
  @override
  _MedicationDetailPageState createState() =>
      _MedicationDetailPageState(this.medication);
}

class _MedicationDetailPageState extends State<MedicationDetailPage> {
  MedicationModel medication;
  _MedicationDetailPageState(this.medication);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(title: Text('Detalhes do Medicamento')),
        drawer: CustomMainMenu(),
        body: Container(
          padding: EdgeInsets.fromLTRB(8, 16, 8, 16),
          child: ListView(
            children: <Widget>[
              ListTile(
                leading: Icon(Icons.enhanced_encryption),
                title: Text(
                  medication.name,
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Divider(
                height: 20,
              ),
              CustomListTile(
                label: 'Dosagem',
                text: medication.dosage ?? 'Não informado',
              ),
              CustomListTile(
                  label: 'Tipo',
                  text: medication.typeDescription ?? 'Não informado'),
              CustomListTile(
                label: 'Cobertura',
                text: medication.coverage ?? 'Não informado',
              ),
              CustomListTile(
                label: 'GPI2',
                text: medication.gpi12 ?? 'Não informado',
              ),
              CustomListTile(
                label: 'GPI4',
                text: medication.gpi4 ?? 'Não informado',
              ),
              CustomListTile(
                label: 'GPI12',
                text: medication.gpi12 ?? 'Não informado',
              ),
              CustomListTile(
                label: 'GPI14',
                text: medication.gpi14 ?? 'Não informado',
              ),
              CustomListTile(
                label: 'Reforço',
                text: medication.strength.toString() ?? 'Não informado',
              ),
              CustomListTile(
                label: 'Unidade Reforço',
                text: medication.strengthUnit ?? 'Não informado',
              ),
              CustomListTile(
                label: 'Indicador OTC RX',
                text: medication.otcRxIndicator ?? 'Não informado',
              )
            ],
          ),
        ));
  }
}
