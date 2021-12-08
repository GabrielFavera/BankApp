import 'package:cifrapay/color/colors.dart';
import 'package:cifrapay/components/components.dart';
import 'package:cifrapay/controller/controller.store.dart';
import 'package:cifrapay/pages/abrir_conta_codigo.dart';
import 'package:cifrapay/pages/abrir_conta_data_nascimento.dart';
import 'package:cifrapay/pages/abrir_conta_foto_documento.dart';
import 'package:cifrapay/pages/abrir_conta_senha.dart';
import 'package:cifrapay/textstyles/textstyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class ModalConfirmarFoto extends StatefulWidget {
  @override
  _ModalConfirmarFoto createState() => _ModalConfirmarFoto();
}

class _ModalConfirmarFoto extends State<ModalConfirmarFoto> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.preto2,
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                SizedBox(
                  height: 44,
                ),
                Text(
                  'Todos os campos estão legíveis ?',
                  style: CustomTextStyles.inter16cinza,
                ),
                SizedBox(
                  height: 47,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed('/tirarfotodocumento');
                      },
                      child: Container(
                        height: 54,
                        width: 156,
                        decoration: BoxDecoration(
                          color: Colors.pink.withOpacity(0),
                          borderRadius: BorderRadius.circular(27),
                          border: Border.all(
                            color: AppColors.brancoprimario,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'NÃO',
                            style: CustomTextStyles.inter14branco,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed('/abrircontasenha');
                      },
                      child: Container(
                        height: 54,
                        width: 156,
                        decoration: BoxDecoration(
                          color: AppColors.amareloprimario,
                          borderRadius: BorderRadius.circular(27),
                        ),
                        child: Center(
                          child: Text(
                            'SIM',
                            style: CustomTextStyles.inter14preto,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
