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

class VerifiqueSeuEmail extends StatefulWidget {
  @override
  _VerifiqueSeuEmail createState() => _VerifiqueSeuEmail();
}

class _VerifiqueSeuEmail extends State<VerifiqueSeuEmail> {
    @override
  void initState() {
    // TODO: implement initState
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
    );
  }
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
                        image: AssetImage('assets/images/email.png'),
                      ),
                      SizedBox(
                        height: 33,
                      ),
                      Text(
                        'Verifique seu e-mail',
                        style: CustomTextStyles.inter24preto,
                      ),
                      SizedBox(
                        height: 16.2,
                      ),
                      SizedBox(
                        width: 221,
                        child: Text(
                          'Enviamos um link de troca de senha para seu e-mail cadastrado.',
                          style: CustomTextStyles.inter13preto2,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(child: SizedBox()),
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
                        borderRadius: BorderRadius.circular(4)),
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
