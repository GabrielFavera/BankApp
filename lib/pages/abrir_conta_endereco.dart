import 'package:cifrapay/color/colors.dart';
import 'package:cifrapay/controller/controller.store.dart';
import 'package:cifrapay/textstyles/textstyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class AbrirContaEndereco extends StatefulWidget {
  @override
  _AbrirContaEndereco createState() => _AbrirContaEndereco();
}

class _AbrirContaEndereco extends State<AbrirContaEndereco> {
  String dropdownvalue = 'AC';
  AbrirContaEnderecoStore abrirContaEnderecoStore = AbrirContaEnderecoStore();

  @override
  void initState() {
    // TODO: implement initState
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: AppColors.amarelostatusbar,
      ),
    );
  }

  var maskFormatterCep = new MaskTextInputFormatter(
      mask: '#####-###', filter: {"#": RegExp(r'[0-9]')});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
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
              SizedBox(
                height: 14,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 22,
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: Text('Endereço residencial',
                        style: CustomTextStyles.inter18600preto2),
                  ),
                ],
              ),
              SizedBox(
                height: 32,
              ),
              Observer(builder: (_) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: TextFormField(
                        onChanged: abrirContaEnderecoStore.setCep,
                        keyboardType: TextInputType.number,
                        maxLength: 9,
                        inputFormatters: [maskFormatterCep],
                        cursorColor: Colors.black,
                        decoration: new InputDecoration(
                          counterText: '',
                          labelText: 'CEP',
                          labelStyle: CustomTextStyles.inter14cinzatextform,
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                            color: AppColors.cinzatextform,
                            width: 0.5,
                          )),
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                            color: AppColors.cinzatextform,
                            width: 1,
                          )),
                        ),
                      ),
                    ),
                  ],
                );
              }),
              SizedBox(
                height: 20,
              ),
              Observer(builder: (_) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: TextFormField(
                        onChanged: abrirContaEnderecoStore.setEndereco,
                        cursorColor: Colors.black,
                        textCapitalization: TextCapitalization.words,
                        decoration: new InputDecoration(
                          labelText: 'Endereço',
                          labelStyle: CustomTextStyles.inter14cinzatextform,
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                            color: AppColors.cinzatextform,
                            width: 0.5,
                          )),
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                            color: AppColors.cinzatextform,
                            width: 1,
                          )),
                        ),
                      ),
                    ),
                  ],
                );
              }),
              SizedBox(
                height: 20,
              ),
              Observer(builder: (_) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: TextFormField(
                        onChanged: abrirContaEnderecoStore.setNumeroEndereco,
                        keyboardType: TextInputType.number,
                        cursorColor: Colors.black,
                        decoration: new InputDecoration(
                          labelText: 'Número',
                          labelStyle: CustomTextStyles.inter14cinzatextform,
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                            color: AppColors.cinzatextform,
                            width: 0.5,
                          )),
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                            color: AppColors.cinzatextform,
                            width: 1,
                          )),
                        ),
                      ),
                    ),
                  ],
                );
              }),
              SizedBox(
                height: 20,
              ),
              Observer(builder: (_) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: TextFormField(
                        cursorColor: Colors.black,
                        textCapitalization: TextCapitalization.words,
                        decoration: new InputDecoration(
                          labelText: 'Complemento (opcional)',
                          labelStyle: CustomTextStyles.inter14cinzatextform,
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                            color: AppColors.cinzatextform,
                            width: 0.5,
                          )),
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                            color: AppColors.cinzatextform,
                            width: 1,
                          )),
                        ),
                      ),
                    ),
                  ],
                );
              }),
              SizedBox(
                height: 20,
              ),
              Observer(builder: (_) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: TextFormField(
                        onChanged: abrirContaEnderecoStore.setBairro,
                        textCapitalization: TextCapitalization.words,
                        cursorColor: Colors.black,
                        decoration: new InputDecoration(
                          labelText: 'Bairro',
                          labelStyle: CustomTextStyles.inter14cinzatextform,
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                            color: AppColors.cinzatextform,
                            width: 0.5,
                          )),
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                            color: AppColors.cinzatextform,
                            width: 1,
                          )),
                        ),
                      ),
                    ),
                  ],
                );
              }),
              SizedBox(
                height: 20,
              ),
              Observer(builder: (_) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: DropdownButtonFormField(
                        decoration: new InputDecoration(
                          labelText: 'Estado',
                          labelStyle: CustomTextStyles.inter14cinzatextform,
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                            color: AppColors.cinzatextform,
                            width: 0.5,
                          )),
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                            color: AppColors.cinzatextform,
                            width: 1,
                          )),
                        ),
                        items: <String>[
                          'AC',
                          'AL',
                          'AP',
                          'AM',
                          'BA',
                          'CE',
                          'ES',
                          'GO',
                          'MA',
                          'MT',
                          'MS',
                          'MG',
                          'PA',
                          'PB',
                          'PR',
                          'PE',
                          'PI',
                          'RJ',
                          'RN',
                          'RS',
                          'RO',
                          'RR',
                          'SC',
                          'SP',
                          'SE',
                          'TO',
                          'DF'
                        ].map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onChanged: (_) {
                          abrirContaEnderecoStore.setEstado;
                        },
                      ),
                    ),
                  ],
                );
              }),
              SizedBox(
                height: 20,
              ),
              Observer(builder: (_) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: DropdownButtonFormField(
                        decoration: new InputDecoration(
                          labelText: 'Cidade',
                          labelStyle: CustomTextStyles.inter14cinzatextform,
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                            color: AppColors.cinzatextform,
                            width: 0.5,
                          )),
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                            color: AppColors.cinzatextform,
                            width: 1,
                          )),
                        ),
                        items: <String>[
                          'AC',
                          'AL',
                          'AP',
                          'AM',
                          'BA',
                          'CE',
                          'ES',
                          'GO',
                          'MA',
                          'MT',
                          'MS',
                          'MG',
                          'PA',
                          'PB',
                          'PR',
                          'PE',
                          'PI',
                          'RJ',
                          'RN',
                          'RS',
                          'RO',
                          'RR',
                          'SC',
                          'SP',
                          'SE',
                          'TO',
                          'DF'
                        ].map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onChanged: (_) {
                          abrirContaEnderecoStore.setCidade;
                        },
                      ),
                    ),
                  ],
                );
              }),
              SizedBox(
                height: 90,
              ),
              Stack(
                children: [
                  Container(
                    height: 2,
                    width: MediaQuery.of(context).size.width * 0.9,
                    color: AppColors.pretocinzaprimario,
                  ),
                  Container(
                    height: 2,
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          child: Container(
                            height: 2,
                            width: MediaQuery.of(context).size.width * 0.60,
                            color: AppColors.pretoprimario,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Observer(builder: (_) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: abrirContaEnderecoStore.isEnderecoValid
                          ? () {
                              Navigator.of(context).pushNamed('/fotodocumento');
                            }
                          : () {
                              null;
                            },
                      child: Container(
                        height: 54,
                        width: MediaQuery.of(context).size.width * 0.9,
                        decoration: BoxDecoration(
                            color: abrirContaEnderecoStore.isEnderecoValid
                                ? AppColors.amareloprimario
                                : AppColors.pretocinzaprimario,
                            borderRadius: BorderRadius.circular(4)),
                        child: Center(
                          child: Text(
                            'CONTINUAR',
                            style: abrirContaEnderecoStore.isEnderecoValid
                                ? CustomTextStyles.inter14preto
                                : CustomTextStyles.inter14cinza,
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
      ),
    );
  }
}
