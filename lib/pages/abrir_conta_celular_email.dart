import 'package:cifrapay/color/colors.dart';
import 'package:cifrapay/components/components.dart';
import 'package:cifrapay/controller/controller.store.dart';
import 'package:cifrapay/pages/abrir_conta_codigo.dart';
import 'package:cifrapay/pages/abrir_conta_codigo_email.dart';
import 'package:cifrapay/textstyles/textstyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class AbrirContaCelularEmail extends StatefulWidget {
  @override
  _AbrirContaCelularEmail createState() => _AbrirContaCelularEmail();
}

class _AbrirContaCelularEmail extends State<AbrirContaCelularEmail> {
   void initState() {
    // TODO: implement initState
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent
      ),
    );
  }
  AbrirContaCelularEmailStore abrirContaCelularEmailStore =
      AbrirContaCelularEmailStore();

  var maskformattercelular = new MaskTextInputFormatter(
      mask: '(##) #####-####', filter: {"#": RegExp(r'[0-9]')});

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
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
                      image: AssetImage('assets/images/back.png'),
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: TextFormField(
                        inputFormatters: [maskformattercelular],
                        onChanged: abrirContaCelularEmailStore.setCelular,
                        style: TextStyle(
                          fontSize: 24,
                          fontFamily: 'sfpro',
                        ),
                        keyboardType: TextInputType.number,
                        cursorRadius: Radius.circular(10),
                        cursorHeight: 25,
                        decoration: InputDecoration(
                          counterText: '',
                          hintText: 'Digite seu celular',
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
                SizedBox(
                  height: 22,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 1.5,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 22,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: TextFormField(
                        onChanged: abrirContaCelularEmailStore.setEmail,
                        style: TextStyle(
                          fontSize: 24,
                          fontFamily: 'sfpro',
                        ),
                        keyboardType: TextInputType.emailAddress,
                        cursorRadius: Radius.circular(10),
                        cursorHeight: 25,
                        decoration: InputDecoration(
                          counterText: '',
                          hintText: 'Digite seu e-mail pessoal',
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
              ],
            ),
            Expanded(
              child: SizedBox(),
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
                          width: MediaQuery.of(context).size.width * 0.50,
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: abrirContaCelularEmailStore.isCelularEmailValid
                      ? () {
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
                              child: AbrirContaCodigo(),
                            ),
                          );
                        }
                      : () {
                          null;
                        },
                  child: Container(
                    height: 54,
                    width: MediaQuery.of(context).size.width * 0.9,
                    decoration: BoxDecoration(
                        color: abrirContaCelularEmailStore.isCelularEmailValid
                            ? AppColors.amareloprimario
                            : AppColors.pretocinzaprimario,
                        borderRadius: BorderRadius.circular(27)),
                    child: Center(
                      child: Text(
                        'CONTINUAR',
                        style: abrirContaCelularEmailStore.isCelularEmailValid
                            ? CustomTextStyles.inter14preto
                            : CustomTextStyles.inter14cinza,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 18,
            ),
          ],
        ),
      );
    });
  }
}
