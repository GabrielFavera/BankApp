import 'package:cifrapay/color/colors.dart';
import 'package:cifrapay/components/components.dart';
import 'package:cifrapay/controller/controller.store.dart';
import 'package:cifrapay/pages/abrir_conta_celular_email.dart';
import 'package:cifrapay/textstyles/textstyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class AbrirContaCpf extends StatefulWidget {
  @override
  _AbrirContaCpf createState() => _AbrirContaCpf();
}

class _AbrirContaCpf extends State<AbrirContaCpf> {
   void initState() {
    // TODO: implement initState
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent
      ),
    );
  }
  AbrirCpfStore abrirCpfStore = AbrirCpfStore();

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
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: TextFormField(
                      inputFormatters: [maskformatterscpf],
                      onChanged: abrirCpfStore.setAbrirCpf,
                      style: abrirCpfStore.isCpfValid
                          ? TextStyle(
                              fontSize: 24,
                              fontFamily: 'sfpro',
                            )
                          : TextStyle(
                              fontSize: 24,
                              fontFamily: 'sfpro',
                              color: AppColors.vermelho,
                            ),
                      keyboardType: TextInputType.number,
                      cursorRadius: Radius.circular(10),
                      cursorHeight: 25,
                      decoration: InputDecoration(
                        counterText: '',
                        hintText: 'Digite seu CPF',
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                      ),
                    ),
                  );
                },
              )
            ],
          ),
          Expanded(
            child: SizedBox(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 31,
                width: MediaQuery.of(context).size.width * 0.9,
                child: Row(
                  children: [
                    Observer(builder: (_) {
                      return GestureDetector(
                        onTap: abrirCpfStore.isCheckAtivo,
                        child: Container(
                          height: 32,
                          width: 32,
                          child: Center(
                            child: abrirCpfStore.check
                                ? Stack(
                                    children: [
                                      Container(
                                        height: 17,
                                        width: 17,
                                        child: Center(
                                          child: Container(
                                            decoration: BoxDecoration(
                                                color:
                                                    AppColors.amareloprimario,
                                                shape: BoxShape.rectangle),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 17,
                                        width: 17,
                                        child: Center(
                                          child: Icon(Icons.check,
                                              size: 13, color: Colors.white),
                                        ),
                                      ),
                                      Container(
                                        height: 17,
                                        width: 17,
                                        child: Center(
                                          child: Container(
                                            decoration: BoxDecoration(
                                              shape: BoxShape.rectangle,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                : Stack(
                                    children: [
                                      Container(
                                        height: 17,
                                        width: 17,
                                        child: Center(
                                          child: Container(
                                            decoration: BoxDecoration(
                                                color:
                                                    Colors.black.withOpacity(0),
                                                shape: BoxShape.rectangle,
                                                border: Border.all(
                                                    width: 2,
                                                    color: AppColors.cinza
                                                        .withOpacity(0.5))),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                          ),
                        ),
                      );
                    }),
                    SizedBox(
                      width: 3,
                    ),
                    Container(
                      height: 31,
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: RichText(
                        text: TextSpan(
                          text: 'Li e concordo com os Termos e Condições de ',
                          style: CustomTextStyles.inter12preto,
                          children: <TextSpan>[
                            TextSpan(
                              text: 'Política de Privacidade',
                              style: CustomTextStyles.inter12amareloprimario,
                            ),
                            TextSpan(
                              text: ' e de ',
                              style: CustomTextStyles.inter12preto,
                            ),
                            TextSpan(
                              text: 'Uso do Aplicativo',
                              style: CustomTextStyles.inter12amareloprimario,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 17,
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
                        width: MediaQuery.of(context).size.width * 0.30,
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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Observer(builder: (_) {
                return GestureDetector(
                  onTap: abrirCpfStore.isAbrirCpfValid
                      ? () {
                          showModalBottomSheet(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(4),
                              ),
                            ),
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            context: context,
                            isScrollControlled: true,
                            backgroundColor: Colors.transparent,
                            builder: (context) => Container(
                              height: MediaQuery.of(context).size.height * 0.9,
                              child: AbrirContaCelularEmail(),
                            ),
                          );
                        }
                      : () {
                          null;
                        },
                  child: Container(
                    height: 54,
                    width: MediaQuery.of(context).size.width * 0.9,
                    decoration: BoxDecoration(
                        color: abrirCpfStore.isAbrirCpfValid
                            ? AppColors.amareloprimario
                            : AppColors.pretocinzaprimario,
                        borderRadius: BorderRadius.circular(27)),
                    child: Center(
                      child: Text(
                        'CONTINUAR',
                        style: abrirCpfStore.isAbrirCpfValid
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
