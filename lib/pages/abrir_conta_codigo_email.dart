import 'package:cifrapay/color/colors.dart';
import 'package:cifrapay/components/components.dart';
import 'package:cifrapay/controller/controller.store.dart';
import 'package:cifrapay/pages/abrir_conta_carregando.dart';
import 'package:cifrapay/pages/abrir_conta_celular_email.dart';
import 'package:cifrapay/textstyles/textstyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_input_text_field/pin_input_text_field.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class AbrirContaCodigoEmail extends StatefulWidget {
  @override
  _AbrirContaCodigoEmail createState() => _AbrirContaCodigoEmail();
}

class _AbrirContaCodigoEmail extends State<AbrirContaCodigoEmail> {
   void initState() {
    // TODO: implement initState
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent
      ),
    );
  }
  AbrirCodigoEmailStore abrirCodigoEmailStore = AbrirCodigoEmailStore();

  var maskformatterscpf = new MaskTextInputFormatter(
      mask: '###.###.###-##', filter: {"#": RegExp(r'[0-9]')});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () => Navigator.pop(context, false),
                child: Container(
                  height: 60,
                  width: 60,
                  child: Image(
                    image: AssetImage('assets/images/back.png'),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Observer(
                builder: (_) {
                  return Container(
                    width: MediaQuery.of(context).size.width * 0.6,
                    child: PinInputTextField(
                      pinLength: 4,
                      onChanged: abrirCodigoEmailStore.setCodigoEmail,
                      keyboardType: TextInputType.number,
                      decoration: UnderlineDecoration(
                        colorBuilder: PinListenColorBuilder(
                            AppColors.pretoclaro, AppColors.pretoclaro),
                        lineHeight: 1.5,
                      ),
                    ),
                  );
                },
              )
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.6,
                child: Text(
                  'Agora digite o código que enviamos por e-mail',
                  style: CustomTextStyles.inter18preto2,
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
          Expanded(
            child: SizedBox(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text('Reenviar código')],
          ),
          SizedBox(height: 37),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Observer(builder: (_) {
                return GestureDetector(
                  onTap: abrirCodigoEmailStore.isCodigoEmailValid
                      ? () {
                          abrirCodigoEmailStore.abrirModais(
                            context: context,
                          );
                        }
                      : () {
                          null;
                        },
                  child: Container(
                    height: 54,
                    width: MediaQuery.of(context).size.width * 0.9,
                    decoration: BoxDecoration(
                        color: abrirCodigoEmailStore.isCodigoEmailValid
                            ? AppColors.amareloprimario
                            : AppColors.pretocinzaprimario,
                        borderRadius: BorderRadius.circular(27)),
                    child: Center(
                      child: Text(
                        'CONTINUAR',
                        style: abrirCodigoEmailStore.isCodigoEmailValid
                            ? CustomTextStyles.inter14preto
                            : CustomTextStyles.inter14cinza,
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
    );
  }
}
