import 'package:cifrapay/color/colors.dart';
import 'package:cifrapay/components/components.dart';
import 'package:cifrapay/controller/controller.store.dart';
import 'package:cifrapay/pages/abrir_conta_senha.dart';
import 'package:cifrapay/pages/login_senha.dart';
import 'package:cifrapay/textstyles/textstyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  void initState() {
    // TODO: implement initState
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
    );
  }

  LoginStore loginStore = LoginStore();

  var maskFormatter = new MaskTextInputFormatter(
      mask: '###.###.###-##', filter: {"#": RegExp(r'[0-9]')});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    image: AssetImage('assets/images/sair.png'),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                child: TextFormField(
                  onChanged: loginStore.setCpf,
                  inputFormatters: [maskFormatter],
                  style: TextStyle(
                    fontSize: 24,
                    fontFamily: 'sfpro',
                  ),
                  maxLength: 14,
                  keyboardType: TextInputType.number,
                  cursorRadius: Radius.circular(10),
                  cursorHeight: 25,
                  decoration: InputDecoration(
                    counterText: '',
                    hintText: 'Digite seu CPF',
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: SizedBox(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 31,
                width: MediaQuery.of(context).size.width * 0.9,
                child: Row(
                  children: [
                    SizedBox(
                      width: 3,
                    ),
                    Container(
                      height: 31,
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: Text(
                        'É novo por aqui? Abra uma conta',
                        style: CustomTextStyles.inter12preto700,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 17,
          ),
          Observer(builder: (_) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: loginStore.isFormValid
                      ? () {
                          Navigator.pop(context);
                          showModalBottomSheet(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(4),
                              ),
                            ),
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            context: context,
                            isScrollControlled: true,
                            backgroundColor: Colors.transparent,
                            builder: (context) => Container(
                              height: MediaQuery.of(context).size.height * 0.9,
                              child: LoginSenha(),
                            ),
                          );
                        }
                      : () {
                          null;
                        },
                  child: Observer(builder: (_) {
                    return Container(
                      height: 54,
                      width: MediaQuery.of(context).size.width * 0.9,
                      decoration: BoxDecoration(
                          color: loginStore.isFormValid
                              ? AppColors.amareloprimario
                              : AppColors.pretocinzaprimario,
                          borderRadius: BorderRadius.circular(27)),
                      child: Center(
                        child: Text(
                          'CONTINUAR',
                          style: loginStore.isFormValid
                              ? CustomTextStyles.inter14preto
                              : CustomTextStyles.inter14cinza,
                        ),
                      ),
                    );
                  }),
                ),
              ],
            );
          }),
          SizedBox(
            height: 18,
          ),
        ],
      ),
    );
  }
}
