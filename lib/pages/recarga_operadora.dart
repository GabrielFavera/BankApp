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

class RecargaOperadora extends StatefulWidget {
  @override
  _RecargaOperadora createState() => _RecargaOperadora();
}

class _RecargaOperadora extends State<RecargaOperadora> {
  var maskcelular = new MaskTextInputFormatter(
      mask: '(##) #####-####', filter: {"#": RegExp(r'[0-9]')});

  RecargaNumeroStore recargaNumeroStore = RecargaNumeroStore();
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
                  color: Colors.white,
                  child: Row(
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
                )
              ],
            ),
            SizedBox(
              height: 14,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 22,
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: Text('Selecione a operadora',
                      style: CustomTextStyles.inter18600preto2),
                ),
              ],
            ),
            SizedBox(
              height: 36,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Valor da transferência R\$ ',
                  style: CustomTextStyles.inter16pretoclaro400,
                ),
                Text(
                  '100,00',
                  style: CustomTextStyles.inter16pretoclaro600,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 22,
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: Row(
                    children: [
                      Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                          border: Border.all(color: AppColors.pretoclaro),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      SizedBox(
                        width: 14,
                      ),
                      Text(
                        'Claro',
                        style: CustomTextStyles.inter14preto2500,
                      ),
                    ],
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
                  height: 2,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: AppColors.pretocinzaprimario
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
                  height: 22,
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: Row(
                    children: [
                      Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                          border: Border.all(color: AppColors.pretoclaro),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      SizedBox(
                        width: 14,
                      ),
                      Text(
                        'Vivo',
                        style: CustomTextStyles.inter14preto2500,
                      ),
                    ],
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
                  height: 2,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: AppColors.pretocinzaprimario
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
                  height: 22,
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: Row(
                    children: [
                      Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                          border: Border.all(color: AppColors.pretoclaro),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      SizedBox(
                        width: 14,
                      ),
                      Text(
                        'Tim',
                        style: CustomTextStyles.inter14preto2500,
                      ),
                    ],
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
                  height: 2,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: AppColors.pretocinzaprimario
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
                  height: 22,
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: Row(
                    children: [
                      Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                          border: Border.all(color: AppColors.pretoclaro),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      SizedBox(
                        width: 14,
                      ),
                      Text(
                        'Oi',
                        style: CustomTextStyles.inter14preto2500,
                      ),
                    ],
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
                  height: 2,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: AppColors.pretocinzaprimario
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
                  height: 22,
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: Row(
                    children: [
                      Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                          border: Border.all(color: AppColors.pretoclaro),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      SizedBox(
                        width: 14,
                      ),
                      Text(
                        'Nextel',
                        style: CustomTextStyles.inter14preto2500,
                      ),
                    ],
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
                  height: 2,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: AppColors.pretocinzaprimario
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 22,
            ),
            Expanded(
              child: SizedBox(),
            ),
            Observer(builder: (_) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: true
                        ? () {
                            Navigator.of(context).pushNamed('/recargaopcoes');
                          }
                        : () {
                            null;
                          },
                    child: Container(
                      height: 54,
                      width: 54,
                      decoration: BoxDecoration(
                          color: true
                              ? AppColors.amareloprimario
                              : AppColors.pretocinzaprimario,
                          borderRadius: BorderRadius.circular(27)),
                      child: Center(
                        child: Center(
                          child: Icon(Icons.keyboard_arrow_right_outlined),
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
