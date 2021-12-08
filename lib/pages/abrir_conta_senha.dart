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

class AbrirContaSenha extends StatefulWidget {
  @override
  _AbrirContaSenha createState() => _AbrirContaSenha();
}

class _AbrirContaSenha extends State<AbrirContaSenha> {
    @override
  void initState() {
    // TODO: implement initState
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: AppColors.amarelostatusbar,
      ),
    );
  }
  String dropdownvalue = 'AC';
  AbrirContaSenhaStore abrirContaSenhaStore = AbrirContaSenhaStore();

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
            SizedBox(
              height: 24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    height: 22,
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: Text('Crie sua senha de acesso',
                        style: CustomTextStyles.inter18600preto2)),
              ],
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
                      obscuringCharacter: '*',
                      enableSuggestions: false,
                      autocorrect: false,
                      obscureText: !abrirContaSenhaStore.passwordVisible,
                      onChanged: abrirContaSenhaStore.setSenha,
                      keyboardType: TextInputType.text,
                      cursorColor: Colors.black,
                      decoration: new InputDecoration(
                        border: InputBorder.none,
                        suffixIcon: abrirContaSenhaStore.passwordVisible
                            ? IconButton(
                                onPressed: abrirContaSenhaStore
                                    .togglePasswordVisibility,
                                icon: Icon(Icons.visibility),
                                color: AppColors.preto2,
                                iconSize: 20,
                              )
                            : IconButton(
                                onPressed: abrirContaSenhaStore
                                    .togglePasswordVisibility,
                                icon: Icon(Icons.visibility_off),
                                iconSize: 20,
                                color: AppColors.preto2,
                              ),
                        counterText: '',
                        hintText: 'Digite sua senha',
                        hintStyle: CustomTextStyles.inter24cinzatextform,
                      ),
                    ),
                  ),
                ],
              );
            }),
            Expanded(
              child: SizedBox(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Mínimo de 8 caracteres',
                          style: CustomTextStyles.inter12preto700),
                      Text('Use letras e números não sequenciais',
                          style: CustomTextStyles.inter12preto700),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 18,
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
                          width: MediaQuery.of(context).size.width * 0.80,
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
                    onTap: abrirContaSenhaStore.isFormSenhaValid
                        ? () {
                            Navigator.of(context).pushNamed('/tudocerto');
                          }
                        : () {
                            null;
                          },
                    child: Container(
                      height: 54,
                      width: MediaQuery.of(context).size.width * 0.9,
                      decoration: BoxDecoration(
                          color: abrirContaSenhaStore.isFormSenhaValid
                              ? AppColors.amareloprimario
                              : AppColors.pretocinzaprimario,
                          borderRadius: BorderRadius.circular(27)),
                      child: Center(
                        child: Text(
                          'CONTINUAR',
                          style: abrirContaSenhaStore.isFormSenhaValid
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
    );
  }
}
