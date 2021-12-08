import 'package:cifrapay/color/colors.dart';
import 'package:cifrapay/components/components.dart';
import 'package:cifrapay/controller/controller.store.dart';
import 'package:cifrapay/pages/abrir_conta_codigo.dart';
import 'package:cifrapay/pages/abrir_conta_codigo_email.dart';
import 'package:cifrapay/textstyles/textstyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class CameraBoleto extends StatefulWidget {
  @override
  _CameraBoleto createState() => _CameraBoleto();
}

class _CameraBoleto extends State<CameraBoleto> {
    @override
  void initState() {
    // TODO: implement initState
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Image(
              image: AssetImage('assets/images/boletofoto.png'),
              fit: BoxFit.cover,
              height: double.infinity,
              width: double.infinity,
              alignment: Alignment.center,
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed('/codigoboleto');
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.14,
                    height: MediaQuery.of(context).size.height,
                    color: AppColors.pretocinzaprimario,
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RotatedBox(
                                quarterTurns: 1,
                                child: Center(
                                  child: Text(
                                    'DIGITAR CÓDIGA DO BOLETO',
                                    style:
                                        CustomTextStyles.inter12amareloprimario,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.14,
                  height: MediaQuery.of(context).size.height,
                  color: AppColors.pretoprimario.withOpacity(0.7),
                ),
                Expanded(
                  child: Container(
                    color: Colors.pink.withOpacity(0),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height,
                  width: 2,
                  decoration: BoxDecoration(
                    color: AppColors.amareloprimario,
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.pink.withOpacity(0),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.166,
                  height: MediaQuery.of(context).size.height,
                  color: AppColors.pretoprimario.withOpacity(0.7),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.166,
                  height: MediaQuery.of(context).size.height,
                  color: AppColors.pretocinzaprimario,
                  child: Stack(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              SizedBox(
                                height: 27,
                              ),
                              Icon(
                                Icons.keyboard_arrow_up,
                                color: AppColors.amareloprimario,
                                size: 35,
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RotatedBox(
                                quarterTurns: 1,
                                child: Text(
                                  'Posicione o código de barras na linha',
                                  style: CustomTextStyles.inter12preto2500,
                                ),
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
          ],
        ),
      ),
    );
  }
}
