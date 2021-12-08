import 'package:cifrapay/color/colors.dart';
import 'package:cifrapay/components/components.dart';
import 'package:cifrapay/controller/controller.store.dart';
import 'package:cifrapay/pages/abrir_conta_celular_email.dart';
import 'package:cifrapay/textstyles/textstyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class CodigoBoleto extends StatefulWidget {
  @override
  _CodigoBoleto createState() => _CodigoBoleto();
}

class _CodigoBoleto extends State<CodigoBoleto> {
  @override
  void initState() {
    // TODO: implement initState
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: AppColors.amarelostatusbar,
      ),
    );
  }
  CodigoBoletoStore codigoBoletoStore = CodigoBoletoStore();

  var maskformattersboleto = new MaskTextInputFormatter(
      mask: '#####.##### #####.###### #####.###### # ##############',
      filter: {"#": RegExp(r'[0-9]')});

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
                Expanded(child: SizedBox()),
                GestureDetector(
                  onTap: () => Navigator.pop(context, false),
                  child: Container(
                    height: 60,
                    width: 60,
                    child: Image(
                      image: AssetImage('assets/images/pagarbotaocamera.png'),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Observer(builder: (_) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: TextFormField(
                          inputFormatters: [maskformattersboleto],
                          maxLength: 54,
                          style: CustomTextStyles.inter18600preto2,
                          enableSuggestions: false,
                          autocorrect: false,
                          onChanged: codigoBoletoStore.setCodigoBoleto,
                          keyboardType: TextInputType.number,
                          cursorColor: Colors.black,
                          decoration: new InputDecoration(
                            border: InputBorder.none,
                            counterText: '',
                            hintText: 'Insira o código do boleto',
                            hintStyle: CustomTextStyles.inter18pretoclaro400,
                          ),
                        ),
                      ),
                    ],
                  );
                }),
              ],
            ),
            Expanded(
              child: SizedBox(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Observer(builder: (_) {
                  return GestureDetector(
                    onTap: codigoBoletoStore.isCodigoBoletoValid
                        ? () {
                            Navigator.of(context).pushNamed('/estapagando');
                          }
                        : () {
                            null;
                          },
                    child: Container(
                      height: 54,
                      width: MediaQuery.of(context).size.width * 0.9,
                      decoration: BoxDecoration(
                          color: codigoBoletoStore.isCodigoBoletoValid
                              ? AppColors.amareloprimario
                              : AppColors.pretocinzaprimario,
                          borderRadius: BorderRadius.circular(27)),
                      child: Center(
                        child: Text(
                          'CONTINUAR',
                          style: codigoBoletoStore.isCodigoBoletoValid
                              ? CustomTextStyles.inter14preto
                              : CustomTextStyles.inter14cinza,
                        ),
                      ),
                    ),
                  );
                })
              ],
            ),
            SizedBox(
              height: 18,
            ),
          ],
        ),
      ),
    );
  }
}
