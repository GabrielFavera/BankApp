import 'package:cifrapay/color/colors.dart';
import 'package:cifrapay/components/components.dart';
import 'package:cifrapay/controller/controller.store.dart';
import 'package:cifrapay/pages/abrir_conta_codigo.dart';
import 'package:cifrapay/pages/abrir_conta_data_nascimento.dart';
import 'package:cifrapay/textstyles/textstyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class AgenciaConta extends StatefulWidget {
  @override
  _AgenciaConta createState() => _AgenciaConta();
}

class _AgenciaConta extends State<AgenciaConta> {
  @override
  void initState() {
    // TODO: implement initState
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: AppColors.amarelostatusbar,
      ),
    );
  }
  static final List<String> items = <String>[
    'Conta Corrente',
    'Poupança',
  ];
  String value = items.first;

  AgenciaContaStore agenciaContaStore = AgenciaContaStore();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Stack(
              children: [
                Container(
                    height: 40,
                    width: MediaQuery.of(context).size.width,
                    color: AppColors.amarelostatusbar),
                Column(
                  children: [
                    Container(
                      height: 20,
                      width: MediaQuery.of(context).size.width,
                      color: AppColors.amarelostatusbar,
                    ),
                    Container(
                      height: 20,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(4),
                          topLeft: Radius.circular(4),
                        ),
                        border: Border.all(
                          width: 3,
                          color: Colors.white,
                          style: BorderStyle.solid,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  height: 40,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () => Navigator.pop(context, false),
                        child: Container(
                          height: 40,
                          width: 60,
                          child: Image(
                            image: AssetImage('assets/images/back.png'),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(height: 14),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 22,
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: Text('Agência e conta',
                      style: CustomTextStyles.inter18600preto2),
                ),
              ],
            ),
            SizedBox(
              height: 36,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: Text(
                    'Tipo de conta',
                    style: CustomTextStyles.inter11pretoclaro400,
                  ),
                ),
              ],
            ),
            Builder(builder: (context) {
              return Container(
                height: 34,
                width: MediaQuery.of(context).size.width * 0.9,
                child: DropdownButtonHideUnderline(
                  child: Theme(
                    data: Theme.of(context).copyWith(
                      canvasColor: AppColors.brancoprimario,
                    ),
                    child: DropdownButton<String>(
                      value: value, // currently selected item
                      items: items
                          .map((item) => DropdownMenuItem<String>(
                                child: Row(
                                  children: [
                                    Container(
                                      height: 20,
                                      child: Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Text(
                                          item,
                                          style:
                                              CustomTextStyles.inter14preto2400,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                value: item,
                              ))
                          .toList(),
                      onChanged: (value) => setState(() {
                        this.value = value!;
                      }),
                    ),
                  ),
                ),
              );
            }),
            Container(
              height: 2,
              width: MediaQuery.of(context).size.width * 0.9,
              color: AppColors.cinza,
            ),
            SizedBox(
              height: 36,
            ),
            Observer(builder: (_) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: TextFormField(
                      style: CustomTextStyles.inter14preto2400,
                      enableSuggestions: false,
                      autocorrect: false,
                      onChanged: agenciaContaStore.setAgencia,
                      keyboardType: TextInputType.number,
                      cursorColor: Colors.black,
                      decoration: new InputDecoration(
                        border: InputBorder.none,
                        counterText: '',
                        labelText: 'Agência',
                        labelStyle: CustomTextStyles.inter14pretoclaro400,
                      ),
                    ),
                  ),
                ],
              );
            }),
            Container(
              height: 2,
              width: MediaQuery.of(context).size.width * 0.9,
              color: AppColors.cinza,
            ),
            SizedBox(
              height: 36,
            ),
            Observer(builder: (_) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: TextFormField(
                      style: CustomTextStyles.inter14preto2400,
                      enableSuggestions: false,
                      autocorrect: false,
                      onChanged: agenciaContaStore.setConta,
                      keyboardType: TextInputType.number,
                      cursorColor: Colors.black,
                      decoration: new InputDecoration(
                        border: InputBorder.none,
                        counterText: '',
                        labelText: 'Conta',
                        labelStyle: CustomTextStyles.inter14pretoclaro400,
                      ),
                    ),
                  ),
                ],
              );
            }),
            Container(
              height: 2,
              width: MediaQuery.of(context).size.width * 0.9,
              color: AppColors.cinza,
            ),
            Expanded(
              child: SizedBox(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'R\$ ',
                  style: CustomTextStyles.inter16pretoclaro400,
                ),
                Text(
                  '100,00 ',
                  style: CustomTextStyles.inter16preto2600,
                ),
                Text(
                  'para ',
                  style: CustomTextStyles.inter16pretoclaro400,
                ),
                Text(
                  'Murilo Silva Moraes',
                  style: CustomTextStyles.inter16preto2600,
                ),
              ],
            ),
            SizedBox(height: 32),
            Observer(builder: (_) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: agenciaContaStore.isAgenciaContaValid
                        ? () {
                            Navigator.of(context).pushNamed('/resumo');
                          }
                        : () {
                            null;
                          },
                    child: Container(
                      height: 54,
                      width: 54,
                      decoration: BoxDecoration(
                          color: agenciaContaStore.isAgenciaContaValid
                              ? AppColors.amareloprimario
                              : AppColors.pretocinzaprimario,
                          borderRadius: BorderRadius.circular(27)),
                      child: Center(
                        child: Center(
                          child: Icon(Icons.keyboard_arrow_right_outlined),
                        ),
                      ),
                    ),
                  ),
                ],
              );
            }),
            SizedBox(
              height: 18,
            ),
          ],
        ),
      ),
    );
  }
}
