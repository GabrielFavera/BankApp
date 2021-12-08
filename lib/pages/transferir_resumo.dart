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

class Resumo extends StatefulWidget {
  @override
  _Resumo createState() => _Resumo();
}

class _Resumo extends State<Resumo> {
  ResumoStore resumoStore = ResumoStore();

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
                  child: Text('Transferindo',
                      style: CustomTextStyles.inter18600preto2),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 73,
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'R\$ 100,00',
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
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text(
                            'para ',
                            style: CustomTextStyles.inter16pretoclaro400,
                          ),
                          Text(
                            'Murilo Silva Moraes',
                            style: CustomTextStyles.inter16preto2600,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 42,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: Text(
                    'Quando',
                    style: CustomTextStyles.inter11pretoclaro400,
                  ),
                ),
              ],
            ),
            Builder(builder: (context) {
              return Container(
                height: 34,
                width: MediaQuery.of(context).size.width * 0.9,
                child: DropdownButtonHideUnderline(
                  child: Theme(
                    data: Theme.of(context).copyWith(
                      canvasColor: AppColors.brancoprimario,
                    ),
                    child: DropdownButton<String>(
                      value: value1, // currently selected item
                      items: items1
                          .map((item) => DropdownMenuItem<String>(
                                child: Row(
                                  children: [
                                    Container(
                                      height: 20,
                                      child: Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Text(
                                          item,
                                          style:
                                              CustomTextStyles.inter14preto2400,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                value: item,
                              ))
                          .toList(),
                      onChanged: (value) => setState(() {
                        this.value1 = value!;
                      }),
                    ),
                  ),
                ),
              );
            }),
            Container(
              height: 2,
              width: MediaQuery.of(context).size.width * 0.9,
              color: AppColors.cinza,
            ),
            SizedBox(
              height: 44,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: Text(
                    'Tipo de transfêrencia',
                    style: CustomTextStyles.inter11pretoclaro400,
                  ),
                ),
              ],
            ),
            Builder(builder: (context) {
              return Container(
                height: 34,
                width: MediaQuery.of(context).size.width * 0.9,
                child: DropdownButtonHideUnderline(
                  child: Theme(
                    data: Theme.of(context).copyWith(
                      canvasColor: AppColors.brancoprimario,
                    ),
                    child: DropdownButton<String>(
                      value: value2, // currently selected item
                      items: items2
                          .map((item) => DropdownMenuItem<String>(
                                child: Row(
                                  children: [
                                    Container(
                                      height: 20,
                                      child: Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Text(
                                          item,
                                          style:
                                              CustomTextStyles.inter14preto2400,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                value: item,
                              ))
                          .toList(),
                      onChanged: (value) => setState(() {
                        this.value2 = value!;
                      }),
                    ),
                  ),
                ),
              );
            }),
            Container(
              height: 2,
              width: MediaQuery.of(context).size.width * 0.9,
              color: AppColors.cinza,
            ),
            SizedBox(height: 78),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 107,
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'Banco',
                            style: CustomTextStyles.inter14cinzatextform400,
                          ),
                          Expanded(child: SizedBox()),
                          Text('BANCO INTER',
                              style: CustomTextStyles.inter14preto2400),
                        ],
                      ),
                      SizedBox(
                        height: 28,
                      ),
                      Row(
                        children: [
                          Text(
                            'Agencia',
                            style: CustomTextStyles.inter14cinzatextform400,
                          ),
                          Expanded(child: SizedBox()),
                          Text('0001', style: CustomTextStyles.inter14preto2400),
                        ],
                      ),
                      SizedBox(
                        height: 28,
                      ),
                      Row(
                        children: [
                          Text(
                            'Conta',
                            style: CustomTextStyles.inter14cinzatextform400,
                          ),
                          Expanded(child: SizedBox()),
                          Text('8474923-1',
                              style: CustomTextStyles.inter14preto2400),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Expanded(
              child: SizedBox(),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed('/descricao');
              },
              child: Container(
                height: 20,
                width: 200,
                color: Colors.white,
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(
                        image: AssetImage('assets/images/descricao.png'),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Text(
                        'Descrição(opcional)',
                        style: CustomTextStyles.inter14preto2600,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Observer(builder: (_) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed('/senha4digitos');
                    },
                    child: Container(
                      height: 54,
                      width: MediaQuery.of(context).size.width * 0.9,
                      decoration: BoxDecoration(
                          color: AppColors.amareloprimario,
                          borderRadius: BorderRadius.circular(27)),
                      child: Center(
                        child: Text(
                          'TRANSFERIR',
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
