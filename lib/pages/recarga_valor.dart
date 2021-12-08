import 'package:cifrapay/color/colors.dart';
import 'package:cifrapay/textstyles/textstyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class RecargaValor extends StatefulWidget {
  @override
  _RecargaValor createState() => _RecargaValor();
}

class _RecargaValor extends State<RecargaValor> {
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
                  child: Text('Selecione o valor',
                      style: CustomTextStyles.inter18600preto2),
                ),
              ],
            ),
            SizedBox(
              height: 36,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.635,
              width: MediaQuery.of(context).size.width,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
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
                                  border:
                                      Border.all(color: AppColors.pretoclaro),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              SizedBox(
                                width: 14,
                              ),
                              Text(
                                'R\$ 10,00',
                                style: CustomTextStyles
                                    .inter14preto2500,
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
                                  border:
                                      Border.all(color: AppColors.pretoclaro),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              SizedBox(
                                width: 14,
                              ),
                              Text(
                                'R\$ 13,00',
                                style: CustomTextStyles
                                    .inter14preto2500,
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
                                  border:
                                      Border.all(color: AppColors.pretoclaro),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              SizedBox(
                                width: 14,
                              ),
                              Text(
                                'R\$ 15,00',
                                style: CustomTextStyles
                                    .inter14preto2500,
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
                                  border:
                                      Border.all(color: AppColors.pretoclaro),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              SizedBox(
                                width: 14,
                              ),
                              Text(
                                'R\$ 20,00',
                                style: CustomTextStyles
                                    .inter14preto2500,
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
                                  border:
                                      Border.all(color: AppColors.pretoclaro),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              SizedBox(
                                width: 14,
                              ),
                              Text(
                                'R\$ 25,00',
                                style: CustomTextStyles
                                    .inter14preto2500,
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
                                  border:
                                      Border.all(color: AppColors.pretoclaro),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              SizedBox(
                                width: 14,
                              ),
                              Text(
                                'R\$ 30,00',
                                style: CustomTextStyles
                                    .inter14preto2500,
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
                                  border:
                                      Border.all(color: AppColors.pretoclaro),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              SizedBox(
                                width: 14,
                              ),
                              Text(
                                'R\$ 35,00',
                                style: CustomTextStyles
                                    .inter14preto2500,
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
                                  border:
                                      Border.all(color: AppColors.pretoclaro),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              SizedBox(
                                width: 14,
                              ),
                              Text(
                                'R\$ 40,00',
                                style: CustomTextStyles
                                    .inter14preto2500,
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
                                  border:
                                      Border.all(color: AppColors.pretoclaro),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              SizedBox(
                                width: 14,
                              ),
                              Text(
                                'R\$ 50,00',
                                style: CustomTextStyles
                                    .inter14preto2500,
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
                  ],
                ),
              ),
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
                            Navigator.of(context).pushNamed('/recargaresumo');
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
