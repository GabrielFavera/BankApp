import 'package:cifrapay/color/colors.dart';
import 'package:cifrapay/components/components.dart';
import 'package:cifrapay/controller/controller.store.dart';
import 'package:cifrapay/pages/abrir_conta_data_nascimento.dart';
import 'package:cifrapay/textstyles/textstyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class AbrirContaNome extends StatefulWidget {
  @override
  _AbrirContaNome createState() => _AbrirContaNome();
}

class _AbrirContaNome extends State<AbrirContaNome> {
   void initState() {
    // TODO: implement initState
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent
      ),
    );
  }
  AbrirContaNomeStore abrirContaNomeStore = AbrirContaNomeStore();

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
                    image: AssetImage('assets/images/sair.png'),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                child: TextFormField(
                  textCapitalization: TextCapitalization.words,
                  onChanged: abrirContaNomeStore.setNome,
                  style: TextStyle(
                    fontSize: 24,
                    fontFamily: 'sfpro',
                  ),
                  keyboardType: TextInputType.name,
                  cursorRadius: Radius.circular(10),
                  cursorHeight: 25,
                  decoration: InputDecoration(
                    counterText: '',
                    hintText: 'Digite seu nome completo',
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                  ),
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
                        width: MediaQuery.of(context).size.width * 0.10,
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
                  onTap: abrirContaNomeStore.isFormNomeValid
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
                              child: AbrirContaDataNascimento(),
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
                        color: abrirContaNomeStore.isFormNomeValid
                            ? AppColors.amareloprimario
                            : AppColors.pretocinzaprimario,
                        borderRadius: BorderRadius.circular(27)),
                    child: Center(
                      child: Text(
                        'CONTINUAR',
                        style: abrirContaNomeStore.isFormNomeValid
                            ? CustomTextStyles.inter14preto
                            : CustomTextStyles.inter14cinza,
                      ),
                    ),
                  ),
                );
              }),
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
