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

class Comprovante extends StatefulWidget {
  @override
  _Comprovante createState() => _Comprovante();
}

class _Comprovante extends State<Comprovante> {
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
                        onTap: () => Navigator.of(context).pushNamed('/telainicialpreta'),
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
              'Comprovante de transfêrencia',
              style: CustomTextStyles.inter20preto2600,
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              '20 NOV 2021 - 16:20',
              style: CustomTextStyles.inter14preto2500,
            ),
            SizedBox(
              height: 28,
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
                      Text('R\$ 100,00',
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
                        'Descrição',
                        style: CustomTextStyles.inter14pretoclaro2500,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              height: 38,
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: AppColors.pretocinzaprimario,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Obrigado pelo falafel ;)',
                  style: CustomTextStyles.inter12preto,
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 1.5,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: AppColors.pretocinzaprimario,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: Row(
                    children: [
                      Text(
                        'Destino',
                        style: CustomTextStyles.inter14preto600,
                      ),
                    ],
                  ),
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
                  height: 1.5,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: AppColors.pretocinzaprimario,
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
                        'Nome',
                        style: CustomTextStyles.inter14pretoclaro2500,
                      ),
                      Expanded(child: SizedBox()),
                      Text('Murilo Silva Moraes',
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
                        'Agência',
                        style: CustomTextStyles.inter14pretoclaro2500,
                      ),
                      Expanded(child: SizedBox()),
                      Text('0001', style: CustomTextStyles.inter14preto2600),
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
                        'Conta',
                        style: CustomTextStyles.inter14pretoclaro2500,
                      ),
                      Expanded(child: SizedBox()),
                      Text('8474923-1',
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
                        'Banco',
                        style: CustomTextStyles.inter14pretoclaro2500,
                      ),
                      Expanded(child: SizedBox()),
                      Text('BANCO PANDA APPS',
                          style: CustomTextStyles.inter14preto2600),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 18,
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 1.5,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: AppColors.pretocinzaprimario,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: Row(
                    children: [
                      Text(
                        'Origem',
                        style: CustomTextStyles.inter14preto600,
                      ),
                    ],
                  ),
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
                  height: 1.5,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: AppColors.pretocinzaprimario,
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
                        'Nome',
                        style: CustomTextStyles.inter14pretoclaro2500,
                      ),
                      Expanded(child: SizedBox()),
                      Text('Enzo Riberio',
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
                        'Agência',
                        style: CustomTextStyles.inter14pretoclaro2500,
                      ),
                      Expanded(child: SizedBox()),
                      Text('0002', style: CustomTextStyles.inter14preto2600),
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
                        'Conta',
                        style: CustomTextStyles.inter14pretoclaro2500,
                      ),
                      Expanded(child: SizedBox()),
                      Text('4873319-2',
                          style: CustomTextStyles.inter14preto2600),
                    ],
                  ),
                ),
              ],
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
                borderRadius: BorderRadius.circular(27),
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
