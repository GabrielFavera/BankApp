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

class RecargaResumo extends StatefulWidget {
  @override
  _RecargaResumo createState() => _RecargaResumo();
}

class _RecargaResumo extends State<RecargaResumo> {
  static final List<String> items1 = <String>[
    'Hoje',
    'Amanhã - 12:00 horas',
  ];

  String value1 = items1.first;

  static final List<String> items2 = <String>[
    'PIX',
    'CPF',
    'CNPJ',
  ];

  String value2 = items2.first;

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
            SizedBox(height: 14),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 22,
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: Text('Você está recarregando',
                      style: CustomTextStyles.inter18600preto2),
                ),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'R\$',
                            style: CustomTextStyles.inter36preto2500,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            '10,00',
                            style: CustomTextStyles.inter36amarelo500,
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Image(
                            image: AssetImage('assets/images/edicao.png'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
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
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Número',
                            style: CustomTextStyles.inter12cinzatextform400,
                          ),
                          Text(
                            '(47) 999023880',
                            style: CustomTextStyles.inter14preto2400,
                          ),
                        ],
                      ),
                      Expanded(child: SizedBox()),
                      Text(
                        'Editar',
                        style: CustomTextStyles.inter14amarelo500,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 32,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 2,
                  width: MediaQuery.of(context).size.width,
                  decoration:
                      BoxDecoration(color: AppColors.pretocinzaprimario),
                ),
              ],
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
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Operadora',
                            style: CustomTextStyles.inter12cinzatextform400,
                          ),
                          Text(
                            'TIM',
                            style: CustomTextStyles.inter14preto2400,
                          ),
                        ],
                      ),
                      Expanded(child: SizedBox()),
                      Text(
                        'Editar',
                        style: CustomTextStyles.inter14amarelo500,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 32,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 2,
                  width: MediaQuery.of(context).size.width,
                  decoration:
                      BoxDecoration(color: AppColors.pretocinzaprimario),
                ),
              ],
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
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Data da recarga',
                            style: CustomTextStyles.inter12cinzatextform400,
                          ),
                          Text(
                            '15/11/2021',
                            style: CustomTextStyles.inter14preto2400,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 32,
            ),
            Expanded(
              child: SizedBox(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Observer(builder: (_) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed('/recargasenha4digitos');
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
