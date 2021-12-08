import 'package:cifrapay/color/colors.dart';
import 'package:cifrapay/components/components.dart';
import 'package:cifrapay/controller/controller.store.dart';
import 'package:cifrapay/pages/abrir_conta_codigo.dart';
import 'package:cifrapay/pages/abrir_conta_data_nascimento.dart';
import 'package:cifrapay/pages/login_verifique_seu_email.dart';
import 'package:cifrapay/textstyles/textstyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class LoginSenha extends StatefulWidget {
  @override
  _LoginSenha createState() => _LoginSenha();
}

class _LoginSenha extends State<LoginSenha> {
     @override
  void initState() {
    // TODO: implement initState
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
    );
  }
  String dropdownvalue = 'AC';
  LoginSenhaStore loginSenhaStore = LoginSenhaStore();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () => Navigator.pop(context, false),
                  child: Container(
                    height: 60,
                    width: 60,
                    child: Image(
                      image: AssetImage('assets/images/back.png'),
                    ),
                  ),
                ),
              ],
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
                      obscureText: !loginSenhaStore.passwordVisible,
                      onChanged: loginSenhaStore.setSenha,
                      keyboardType: TextInputType.text,
                      cursorColor: Colors.black,
                      decoration: new InputDecoration(
                        border: InputBorder.none,
                        suffixIcon: loginSenhaStore.passwordVisible
                            ? IconButton(
                                onPressed: loginSenhaStore
                                    .togglePasswordVisibility,
                                icon: Icon(Icons.visibility),
                                color: AppColors.preto2,
                                iconSize: 20,
                              )
                            : IconButton(
                                onPressed: loginSenhaStore
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
            SizedBox(
              height: 14,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(20),
                        ),
                      ),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      context: context,
                      isScrollControlled: true,
                      backgroundColor: Colors.transparent,
                      builder: (context) => Container(
                        height: MediaQuery.of(context).size.height * 0.9,
                        child: VerifiqueSeuEmail(),
                      ),
                    );
                  },
                  child: Container(
                    height: 31,
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: Text(
                      'Esqueci minha senha',
                      style: CustomTextStyles.inter12preto700,
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: SizedBox(),
            ),
            Observer(builder: (_) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: loginSenhaStore.isFormSenhaValid
                        ? () {
                            Navigator.of(context)
                                .pushNamed('/telainicialpreta');
                          }
                        : () {
                            null;
                          },
                    child: Container(
                      height: 54,
                      width: MediaQuery.of(context).size.width * 0.9,
                      decoration: BoxDecoration(
                          color: loginSenhaStore.isFormSenhaValid
                              ? AppColors.amareloprimario
                              : AppColors.pretocinzaprimario,
                          borderRadius: BorderRadius.circular(27)),
                      child: Center(
                        child: Text(
                          'CONTINUAR',
                          style: loginSenhaStore.isFormSenhaValid
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
