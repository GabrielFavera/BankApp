import 'package:cifrapay/color/colors.dart';
import 'package:cifrapay/components/components.dart';
import 'package:cifrapay/controller/controller.store.dart';
import 'package:cifrapay/pages/abrir_conta_codigo.dart';
import 'package:cifrapay/pages/abrir_conta_data_nascimento.dart';
import 'package:cifrapay/pages/abrir_conta_foto_documento.dart';
import 'package:cifrapay/pages/abrir_conta_senha.dart';
import 'package:cifrapay/textstyles/textstyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class TudoCerto extends StatefulWidget {
  @override
  _TudoCerto createState() => _TudoCerto();
}

class _TudoCerto extends State<TudoCerto> {
  @override
  void initState() {
    // TODO: implement initState
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: AppColors.amarelostatusbar,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.2487,
                      ),
                      Image(
                        height: 61,
                        width: 157,
                        image: AssetImage('assets/images/checktudocerto.png'),
                      ),
                      SizedBox(
                        height: 33,
                      ),
                      Text(
                        'Tudo certo !',
                        style: CustomTextStyles.inter24preto,
                      ),
                      SizedBox(
                        height: 16.2,
                      ),
                      SizedBox(
                        width: 327,
                        child: Text(
                          'Já recebemos seus dados e vamos analisar sua solicitação. Fique atento, em breve você receberá o nosso retorno através do e-mail cadastrado.',
                          style: CustomTextStyles.inter13preto2,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: SizedBox(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed('/');
                  },
                  child: Container(
                    height: 54,
                    width: 54,
                    decoration: BoxDecoration(
                        color: AppColors.amareloprimario,
                        borderRadius: BorderRadius.circular(27)),
                    child: Center(
                      child:
                          Text('OK', style: CustomTextStyles.inter14preto600),
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
      ),
    );
  }
}
