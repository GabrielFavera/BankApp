import 'package:cifrapay/color/colors.dart';
import 'package:cifrapay/components/components.dart';
import 'package:cifrapay/controller/controller.store.dart';
import 'package:cifrapay/pages/abrir_conta_codigo.dart';
import 'package:cifrapay/pages/abrir_conta_data_nascimento.dart';
import 'package:cifrapay/textstyles/textstyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class Extrato extends StatefulWidget {
  @override
  _Extrato createState() => _Extrato();
}

class _Extrato extends State<Extrato> {
  var maskcelular = new MaskTextInputFormatter(
      mask: '(##) #####-####', filter: {"#": RegExp(r'[0-9]')});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Container(
                height: 20,
                width: MediaQuery.of(context).size.width,
                color: Colors.white),
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
                  child:
                      Text('Extrato', style: CustomTextStyles.inter18600preto2),
                ),
              ],
            ),
            SizedBox(
              height: 52,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: Text(
                    'Saldo',
                    style: CustomTextStyles.inter14pretoclaro500,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 4,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: Text(
                    'R\$ 807,90',
                    style: CustomTextStyles.inter24preto2500,
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
                Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: 40,
                  decoration: BoxDecoration(
                    color: AppColors.pretocinzaprimario,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 12,
                      ),
                      Image(
                        image: AssetImage('assets/images/search.png'),
                      ),
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
                  height: 40,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 83,
                        height: 28,
                        decoration: BoxDecoration(
                          color: AppColors.cinza,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: Text(
                            '7 dias',
                            style: CustomTextStyles.inter14branco,
                          ),
                        ),
                      ),
                      Container(
                        width: 83,
                        height: 28,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: Text(
                            '15 dias',
                            style: CustomTextStyles.inter14cinza500,
                          ),
                        ),
                      ),
                      Container(
                        width: 83,
                        height: 28,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: Text(
                            '7 dias',
                            style: CustomTextStyles.inter14cinza500,
                          ),
                        ),
                      ),
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
                  height: 2,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: AppColors.pretocinzaprimario,
                  ),
                ),
              ],
            ),
            Expanded(
              child: SizedBox(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 18,
                      ),
                      Column(
                        children: [
                          Container(
                            height: 70,
                            width: MediaQuery.of(context).size.width * 0.9,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 30,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'SEX',
                                          style: CustomTextStyles
                                              .inter10pretoclaro400,
                                        ),
                                        Text(
                                          '20',
                                          style: CustomTextStyles
                                              .inter18pretoclaro500,
                                        ),
                                        Text(
                                          'NOV',
                                          style: CustomTextStyles
                                              .inter10pretoclaro600,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          width: 25,
                                          child: Image(
                                            image: AssetImage(
                                                'assets/images/menos.png'),
                                          ),
                                        ),
                                        Text(
                                          'R\$ 240,07',
                                          style:
                                              CustomTextStyles.inter16preto2500,
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          width: 25,
                                        ),
                                        Text(
                                          'PAGAMENTO FATURA BANK',
                                          style: CustomTextStyles
                                              .inter14pretoclaro500,
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          width: 25,
                                        ),
                                        Text(
                                          'PAGAMENTO FATURA BANK',
                                          style: CustomTextStyles
                                              .inter12pretoclaro500,
                                        ),
                                        SizedBox(
                                          width: 50,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 18,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            height: 2,
                            width: MediaQuery.of(context).size.width * 0.68,
                            decoration: BoxDecoration(
                              color: AppColors.pretocinzaprimario,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 18,
                      ),
                      Column(
                        children: [
                          Container(
                            height: 75,
                            width: MediaQuery.of(context).size.width * 0.9,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          width: 25,
                                          child: Image(
                                            image: AssetImage(
                                                'assets/images/mais.png'),
                                          ),
                                        ),
                                        Text(
                                          'R\$ 500,00',
                                          style:
                                              CustomTextStyles.inter16preto2500,
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          width: 25,
                                        ),
                                        Text(
                                          'TRANSFERÊNCIA RECEBIDA',
                                          style: CustomTextStyles
                                              .inter14pretoclaro500,
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          width: 25,
                                        ),
                                        Text(
                                          'PAGAMENTO FATURA BANK',
                                          style: CustomTextStyles
                                              .inter12pretoclaro500,
                                        ),
                                        SizedBox(
                                          width: 49,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 18,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 2,
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
                          Column(
                            children: [
                              Container(
                                height: 70,
                                width: MediaQuery.of(context).size.width * 0.9,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: 30,
                                        ),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              'SEX',
                                              style: CustomTextStyles
                                                  .inter10pretoclaro400,
                                            ),
                                            Text(
                                              '19',
                                              style: CustomTextStyles
                                                  .inter18pretoclaro500,
                                            ),
                                            Text(
                                              'NOV',
                                              style: CustomTextStyles
                                                  .inter10pretoclaro600,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                              width: 25,
                                              child: Image(
                                                image: AssetImage(
                                                    'assets/images/menos.png'),
                                              ),
                                            ),
                                            Text(
                                              'R\$ 240,07',
                                              style: CustomTextStyles
                                                  .inter16preto2500,
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              width: 25,
                                            ),
                                            Text(
                                              'PAGAMENTO FATURA BANK',
                                              style: CustomTextStyles
                                                  .inter14pretoclaro500,
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 4,
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              width: 25,
                                            ),
                                            Text(
                                              'PAGAMENTO FATURA BANK',
                                              style: CustomTextStyles
                                                  .inter12pretoclaro500,
                                            ),
                                            SizedBox(
                                              width: 50,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 18,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                height: 2,
                                width: MediaQuery.of(context).size.width * 0.68,
                                decoration: BoxDecoration(
                                  color: AppColors.pretocinzaprimario,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 18,
                          ),
                          Column(
                            children: [
                              Container(
                                height: 75,
                                width: MediaQuery.of(context).size.width * 0.9,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                              width: 25,
                                              child: Image(
                                                image: AssetImage(
                                                    'assets/images/mais.png'),
                                              ),
                                            ),
                                            Text(
                                              'R\$ 500,00',
                                              style: CustomTextStyles
                                                  .inter16preto2500,
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              width: 25,
                                            ),
                                            Text(
                                              'TRANSFERÊNCIA RECEBIDA',
                                              style: CustomTextStyles
                                                  .inter14pretoclaro500,
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 4,
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              width: 25,
                                            ),
                                            Text(
                                              'PAGAMENTO FATURA BANK',
                                              style: CustomTextStyles
                                                  .inter12pretoclaro500,
                                            ),
                                            SizedBox(
                                              width: 49,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 18,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 2,
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
                              Column(
                                children: [
                                  Container(
                                    height: 70,
                                    width:
                                        MediaQuery.of(context).size.width * 0.9,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            SizedBox(
                                              width: 30,
                                            ),
                                            Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  'SEX',
                                                  style: CustomTextStyles
                                                      .inter10pretoclaro400,
                                                ),
                                                Text(
                                                  '18',
                                                  style: CustomTextStyles
                                                      .inter18pretoclaro500,
                                                ),
                                                Text(
                                                  'NOV',
                                                  style: CustomTextStyles
                                                      .inter10pretoclaro600,
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Row(
                                              children: [
                                                Container(
                                                  width: 25,
                                                  child: Image(
                                                    image: AssetImage(
                                                        'assets/images/menos.png'),
                                                  ),
                                                ),
                                                Text(
                                                  'R\$ 240,07',
                                                  style: CustomTextStyles
                                                      .inter16preto2500,
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Row(
                                              children: [
                                                Container(
                                                  width: 25,
                                                ),
                                                Text(
                                                  'PAGAMENTO FATURA BANK',
                                                  style: CustomTextStyles
                                                      .inter14pretoclaro500,
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 4,
                                            ),
                                            Row(
                                              children: [
                                                Container(
                                                  width: 25,
                                                ),
                                                Text(
                                                  'PAGAMENTO FATURA BANK',
                                                  style: CustomTextStyles
                                                      .inter12pretoclaro500,
                                                ),
                                                SizedBox(
                                                  width: 50,
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 18,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    height: 2,
                                    width: MediaQuery.of(context).size.width *
                                        0.68,
                                    decoration: BoxDecoration(
                                      color: AppColors.pretocinzaprimario,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 18,
                              ),
                              Column(
                                children: [
                                  Container(
                                    height: 75,
                                    width:
                                        MediaQuery.of(context).size.width * 0.9,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Row(
                                              children: [
                                                Container(
                                                  width: 25,
                                                  child: Image(
                                                    image: AssetImage(
                                                        'assets/images/mais.png'),
                                                  ),
                                                ),
                                                Text(
                                                  'R\$ 500,00',
                                                  style: CustomTextStyles
                                                      .inter16preto2500,
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Row(
                                              children: [
                                                Container(
                                                  width: 25,
                                                ),
                                                Text(
                                                  'TRANSFERÊNCIA RECEBIDA',
                                                  style: CustomTextStyles
                                                      .inter14pretoclaro500,
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 4,
                                            ),
                                            Row(
                                              children: [
                                                Container(
                                                  width: 25,
                                                ),
                                                Text(
                                                  'PAGAMENTO FATURA BANK',
                                                  style: CustomTextStyles
                                                      .inter12pretoclaro500,
                                                ),
                                                SizedBox(
                                                  width: 49,
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 18,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        height: 2,
                                        width:
                                            MediaQuery.of(context).size.width,
                                        decoration: BoxDecoration(
                                          color: AppColors.pretocinzaprimario,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 18,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
