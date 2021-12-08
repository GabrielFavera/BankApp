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

class RecargaComprovante extends StatefulWidget {
  @override
  _RecargaComprovante createState() => _RecargaComprovante();
}

class _RecargaComprovante extends State<RecargaComprovante> {
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () => Navigator.pop(context, false),
                        child: Container(
                          height: 40,
                          width: 60,
                          child: Image(
                            image: AssetImage('assets/images/sair.png'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 14),
            RichText(
              text: TextSpan(
                text: 'Bank',
                style: CustomTextStyles.fonte40preto700,
                children: <TextSpan>[
                  TextSpan(
                    text: '',
                    style: CustomTextStyles.fonte40preto700,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              'Comprovante de recarga',
              style: CustomTextStyles.inter20preto2600,
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              '20 NOV 2021',
              style: CustomTextStyles.inter14preto2500,
            ),
            SizedBox(
              height: 7,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: Row(
                    children: [
                      Text(
                        'Valor',
                        style: CustomTextStyles.inter14pretoclaro2500,
                      ),
                      Expanded(child: SizedBox()),
                      Text('R\$ 10,00',
                          style: CustomTextStyles.inter14preto2600),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 18,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: Row(
                    children: [
                      Text(
                        'Número',
                        style: CustomTextStyles.inter14pretoclaro2500,
                      ),
                      Expanded(child: SizedBox()),
                      Text('(47) 99902-3880',
                          style: CustomTextStyles.inter14preto2600),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 18,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: Row(
                    children: [
                      Text(
                        'Operadora',
                        style: CustomTextStyles.inter14pretoclaro2500,
                      ),
                      Expanded(child: SizedBox()),
                      Text('TIM', style: CustomTextStyles.inter14preto2600),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 18,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: Row(
                    children: [
                      Text(
                        'Data da recarga',
                        style: CustomTextStyles.inter14pretoclaro2500,
                      ),
                      Expanded(child: SizedBox()),
                      Text('20/11/2021',
                          style: CustomTextStyles.inter14preto2600),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 18,
            ),
            Expanded(
              child: SizedBox(),
            ),
            Container(
              height: 40,
              width: 200,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: AppColors.amareloprimario),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Center(
                child: Text('COMPARTILHAR'),
              ),
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
