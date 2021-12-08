import 'package:cifrapay/color/colors.dart';
import 'package:cifrapay/components/components.dart';
import 'package:cifrapay/controller/controller.store.dart';
import 'package:cifrapay/pages/abrir_conta_celular_email.dart';
import 'package:cifrapay/textstyles/textstyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class EstaPagando extends StatefulWidget {
  @override
  _EstaPagando createState() => _EstaPagando();
}

class _EstaPagando extends State<EstaPagando> {
 @override
  void initState() {
    // TODO: implement initState
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: AppColors.amarelostatusbar,
      ),
    );
  }
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
              ],
            ),
            SizedBox(
              height: 27,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Você está ',
                  style: CustomTextStyles.inter16pretoclaro400,
                ),
                Text(
                  'pagando',
                  style: CustomTextStyles.inter16preto2600,
                ),
              ],
            ),
            SizedBox(
              height: 9,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'R\$ 132,00',
                  style: CustomTextStyles.inter28preto2500,
                ),
              ],
            ),
            SizedBox(
              height: 9,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'para ',
                  style: CustomTextStyles.inter16pretoclaro400,
                ),
                Text(
                  'Company Comercio S.A.',
                  style: CustomTextStyles.inter16preto2600,
                ),
              ],
            ),
            SizedBox(
              height: 74,
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
                        style: CustomTextStyles.inter14pretoclaro500,
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
              height: 24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: Row(
                    children: [
                      Text(
                        'Boleto',
                        style: CustomTextStyles.inter14pretoclaro500,
                      ),
                      Expanded(child: SizedBox()),
                      Container(
                        height: 34,
                        width: 268,
                        child: Text(
                          '23793.38128 60073.212361 00000.063305 8 88060000002000',
                          style: CustomTextStyles.inter14preto2600,
                          textAlign: TextAlign.end,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 34,
            ),
            Container(
              height: 94,
              width: MediaQuery.of(context).size.width,
              color: AppColors.pretocinzaprimario,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Data de pagamento',
                              style: CustomTextStyles.inter14pretoclaro500,
                            ),
                            Expanded(child: SizedBox()),
                            Text('20/11/2021',
                                style: CustomTextStyles.inter14preto2600),
                          ],
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Row(
                          children: [
                            Text(
                              'Data de vencimento',
                              style: CustomTextStyles.inter14pretoclaro500,
                            ),
                            Expanded(child: SizedBox()),
                            Text('21/11/2021',
                                style: CustomTextStyles.inter14preto2600),
                          ],
                        ),
                      ],
                    ),
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
                Text(
                  'Saldo atual R\$ ',
                  style: CustomTextStyles.inter14preto,
                ),
                Text(
                  '807,90',
                  style: CustomTextStyles.inter14preto600,
                ),
              ],
            ),
            SizedBox(
              height: 32,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Observer(builder: (_) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed('/pagarsenha4digitos');
                    },
                    child: Container(
                      height: 54,
                      width: MediaQuery.of(context).size.width * 0.9,
                      decoration: BoxDecoration(
                          color: AppColors.amareloprimario,
                          borderRadius: BorderRadius.circular(27)),
                      child: Center(
                        child: Text(
                          'REALIZAR PAGAMENTO',
                          style: CustomTextStyles.inter14preto,
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
