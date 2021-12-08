import 'package:cifrapay/color/colors.dart';
import 'package:cifrapay/components/components.dart';
import 'package:cifrapay/controller/controller.store.dart';
import 'package:cifrapay/pages/abrir_conta_codigo.dart';
import 'package:cifrapay/pages/abrir_conta_data_nascimento.dart';
import 'package:cifrapay/pages/abrir_conta_pagina_moda_confirmar_foto.dart';
import 'package:cifrapay/pages/abrir_conta_senha.dart';
import 'package:cifrapay/textstyles/textstyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class TirarFotoDocumento extends StatefulWidget {
  @override
  _TirarFotoDocumento createState() => _TirarFotoDocumento();
}

class _TirarFotoDocumento extends State<TirarFotoDocumento> {
  AbrirContaEnderecoStore abrirContaEnderecoStore = AbrirContaEnderecoStore();
  @override
  void initState() {
    // TODO: implement initState
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: AppColors.pretoprimario,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.1305,
            width: MediaQuery.of(context).size.width,
            color: AppColors.pretoprimario.withOpacity(0.8),
          ),
          Row(
            children: [
              Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height -
                        (MediaQuery.of(context).size.height * 0.1305 +
                            MediaQuery.of(context).size.height * 0.2340),
                    width: MediaQuery.of(context).size.width * 0.0640,
                    color: AppColors.pretoprimario.withOpacity(0.8),
                  ),
                ],
              ),
              Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height -
                        (MediaQuery.of(context).size.height * 0.1305 +
                            MediaQuery.of(context).size.height * 0.2340),
                    width: MediaQuery.of(context).size.width * 0.8720,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 36,
                              width: 81,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                color: AppColors.cinza.withOpacity(0.2),
                              ),
                              child: Center(
                                child: Text('Frente'),
                              ),
                            ),
                            SizedBox(
                              height: 94,
                            ),
                            Container(
                              height: 1,
                              width: 247,
                              color: AppColors.amareloprimario,
                            ),
                            SizedBox(
                              height: 94,
                            ),
                            Container(
                              height: 36,
                              width: 81,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                color: AppColors.cinza.withOpacity(0.2),
                              ),
                              child: Center(
                                child: Text('Verso'),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height -
                        (MediaQuery.of(context).size.height * 0.1305 +
                            MediaQuery.of(context).size.height * 0.2340),
                    width: MediaQuery.of(context).size.width * 0.0640,
                    color: AppColors.pretoprimario.withOpacity(0.8),
                  ),
                ],
              ),
            ],
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.2340,
            width: MediaQuery.of(context).size.width,
            color: AppColors.pretoprimario.withOpacity(0.8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: 118,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed('/paginabrancadafoto');
                        showModalBottomSheet(
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          context: context,
                          isScrollControlled: true,
                          backgroundColor: AppColors.cinza,
                          builder: (context) => Container(
                            height: MediaQuery.of(context).size.height * 0.25,
                            child: ModalConfirmarFoto(),
                          ),
                        );
                      },
                      child: Container(
                        height: 54,
                        width: 54,
                        decoration: BoxDecoration(
                            color: AppColors.amareloprimario,
                            borderRadius: BorderRadius.circular(27)),
                        child: Icon(
                          Icons.camera_alt_outlined,
                          color: AppColors.pretoprimario,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
