import 'package:cifrapay/color/colors.dart';
import 'package:cifrapay/components/components.dart';
import 'package:cifrapay/controller/controller.store.dart';
import 'package:cifrapay/pages/abrir_conta_codigo.dart';
import 'package:cifrapay/pages/abrir_conta_data_nascimento.dart';
import 'package:cifrapay/pages/abrir_conta_senha.dart';
import 'package:cifrapay/textstyles/textstyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class FotoDocumento extends StatefulWidget {
  @override
  _FotoDocumento createState() => _FotoDocumento();
}

class _FotoDocumento extends State<FotoDocumento> {
    @override
  void initState() {
    // TODO: implement initState
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: AppColors.amarelostatusbar,
      ),
    );
  }
  AbrirContaEnderecoStore abrirContaEnderecoStore = AbrirContaEnderecoStore();

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
            SizedBox(
              height: 14,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Foto do documento',
                            style: CustomTextStyles.inter18600preto2),
                        SizedBox(
                          height: 4,
                        ),
                        Text('Siga as recomendações',
                            style: CustomTextStyles.inter14cinzatextform),
                      ],
                    )),
              ],
            ),
            SizedBox(
              height: 48,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                  height: 87,
                  width: 87,
                  image: AssetImage('assets/images/camera.png'),
                ),
              ],
            ),
            SizedBox(
              height: 51,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.95,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: 40,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text('1.',
                                    style: CustomTextStyles
                                        .inter24amarelostatusbar600),
                                Text(
                                    'O documento deve estar aberto e sem capas',
                                    style: CustomTextStyles.inter14preto2500,
                                    textAlign: TextAlign.center)
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: 40,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text('2.',
                                    style: CustomTextStyles
                                        .inter24amarelostatusbar600),
                                Text('O ambiente deve estar com boa iluminação',
                                    style: CustomTextStyles.inter14preto2500,
                                    textAlign: TextAlign.center)
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: 40,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text('3.',
                                    style: CustomTextStyles
                                        .inter24amarelostatusbar600),
                                Text('Veja se os textos estão legíveis na foto',
                                    style: CustomTextStyles.inter14preto2500,
                                    textAlign: TextAlign.center)
                              ],
                            ),
                          ),
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
            Stack(
              children: [
                Container(
                  height: 2,
                  width: MediaQuery.of(context).size.width * 0.9,
                  color: AppColors.pretocinzaprimario,
                ),
                Container(
                  height: 2,
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        child: Container(
                          height: 2,
                          width: MediaQuery.of(context).size.width * 0.70,
                          color: AppColors.pretoprimario,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Observer(builder: (_) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed('/tirarfotodocumento');
                    },
                    child: Container(
                      height: 54,
                      width: MediaQuery.of(context).size.width * 0.9,
                      decoration: BoxDecoration(
                          color: AppColors.amareloprimario,
                          borderRadius: BorderRadius.circular(27)),
                      child: Center(
                        child: Text(
                          'CONTINUAR',
                          style: CustomTextStyles.inter14preto,
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
