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

class NomeDoBanco extends StatefulWidget {
  @override
  _NomeDoBanco createState() => _NomeDoBanco();
}

class _NomeDoBanco extends State<NomeDoBanco> {
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
        appBar: PreferredSize(
            child: Column(
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
                Stack(
                  children: [
                    Container(
                      height: 180,
                      width: MediaQuery.of(context).size.width,
                      color: Colors.white,
                    ),
                    Column(
                      children: [
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
                                        image: AssetImage(
                                            'assets/images/back.png'),
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
                              child: Text('Nome do banco',
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
                            Container(
                              height: 40,
                              width: MediaQuery.of(context).size.width * 0.9,
                              decoration: BoxDecoration(
                                  color: AppColors.pretocinzaprimario,
                                  borderRadius: BorderRadius.circular(20)),
                              child: TextFormField(
                                textCapitalization: TextCapitalization.words,
                                cursorColor: Colors.black,
                                style: CustomTextStyles.inter18cinza600,
                                keyboardType: TextInputType.text,
                                decoration: new InputDecoration(
                                    fillColor: Colors.pink,
                                    prefixIcon: Icon(
                                      Icons.search,
                                      color: AppColors.cinza,
                                    ),
                                    border: InputBorder.none,
                                    focusedBorder: InputBorder.none,
                                    enabledBorder: InputBorder.none,
                                    errorBorder: InputBorder.none,
                                    disabledBorder: InputBorder.none,
                                    contentPadding: EdgeInsets.only(
                                        left: 15,
                                        bottom: 11,
                                        top: 11,
                                        right: 15),
                                    hintText: ''),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
            preferredSize:
                Size.fromHeight(AppBar().preferredSize.height * 4.2)),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed('/agenciaconta');
            },
            child: Column(
              children: [
                Container(
                  height: 68,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 68,
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: Row(
                          children: [
                            Text(
                              '0001',
                              style: CustomTextStyles.inter16preto2400,
                            ),
                            SizedBox(
                              width: 18,
                            ),
                            Text(
                              'BANCO PANDA APPS',
                              style: CustomTextStyles.inter16preto2600,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
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
                Container(
                  height: 68,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 68,
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: Row(
                          children: [
                            Text(
                              '0001',
                              style: CustomTextStyles.inter16preto2400,
                            ),
                            SizedBox(
                              width: 18,
                            ),
                            Text(
                              'BANCO PANDA APPS',
                              style: CustomTextStyles.inter16preto2600,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
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
                Container(
                  height: 68,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 68,
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: Row(
                          children: [
                            Text(
                              '0001',
                              style: CustomTextStyles.inter16preto2400,
                            ),
                            SizedBox(
                              width: 18,
                            ),
                            Text(
                              'BANCO PANDA APPS',
                              style: CustomTextStyles.inter16preto2600,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
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
                Container(
                  height: 68,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 68,
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: Row(
                          children: [
                            Text(
                              '0001',
                              style: CustomTextStyles.inter16preto2400,
                            ),
                            SizedBox(
                              width: 18,
                            ),
                            Text(
                              'BANCO PANDA APPS',
                              style: CustomTextStyles.inter16preto2600,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
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
                Container(
                  height: 68,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 68,
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: Row(
                          children: [
                            Text(
                              '0001',
                              style: CustomTextStyles.inter16preto2400,
                            ),
                            SizedBox(
                              width: 18,
                            ),
                            Text(
                              'BANCO PANDA APPS',
                              style: CustomTextStyles.inter16preto2600,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
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
                Container(
                  height: 68,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 68,
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: Row(
                          children: [
                            Text(
                              '0001',
                              style: CustomTextStyles.inter16preto2400,
                            ),
                            SizedBox(
                              width: 18,
                            ),
                            Text(
                              'BANCO PANDA APPS',
                              style: CustomTextStyles.inter16preto2600,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
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
                Container(
                  height: 68,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 68,
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: Row(
                          children: [
                            Text(
                              '0001',
                              style: CustomTextStyles.inter16preto2400,
                            ),
                            SizedBox(
                              width: 18,
                            ),
                            Text(
                              'BANCO PANDA APPS',
                              style: CustomTextStyles.inter16preto2600,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
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
                Container(
                  height: 68,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 68,
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: Row(
                          children: [
                            Text(
                              '0001',
                              style: CustomTextStyles.inter16preto2400,
                            ),
                            SizedBox(
                              width: 18,
                            ),
                            Text(
                              'BANCO PANDA APPS',
                              style: CustomTextStyles.inter16preto2600,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
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
                Container(
                  height: 68,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 68,
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: Row(
                          children: [
                            Text(
                              '0001',
                              style: CustomTextStyles.inter16preto2400,
                            ),
                            SizedBox(
                              width: 18,
                            ),
                            Text(
                              'BANCO PANDA APPS',
                              style: CustomTextStyles.inter16preto2600,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
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
                Container(
                  height: 68,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 68,
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: Row(
                          children: [
                            Text(
                              '0001',
                              style: CustomTextStyles.inter16preto2400,
                            ),
                            SizedBox(
                              width: 18,
                            ),
                            Text(
                              'BANCO PANDA APPS',
                              style: CustomTextStyles.inter16preto2600,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
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
                Container(
                  height: 68,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 68,
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: Row(
                          children: [
                            Text(
                              '0001',
                              style: CustomTextStyles.inter16preto2400,
                            ),
                            SizedBox(
                              width: 18,
                            ),
                            Text(
                              'BANCO PANDA APPS',
                              style: CustomTextStyles.inter16preto2600,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
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
                Container(
                  height: 68,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 68,
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: Row(
                          children: [
                            Text(
                              '0001',
                              style: CustomTextStyles.inter16preto2400,
                            ),
                            SizedBox(
                              width: 18,
                            ),
                            Text(
                              'BANCO PANDA APPS',
                              style: CustomTextStyles.inter16preto2600,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
