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

class ComoSeChama extends StatefulWidget {
  @override
  _ComoSeChama createState() => _ComoSeChama();
}

class _ComoSeChama extends State<ComoSeChama> {
   @override
  void initState() {
    // TODO: implement initState
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: AppColors.amarelostatusbar,
      ),
    );
  }
  ComoSeChamaStore comoSeChamaStore = ComoSeChamaStore();

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
                  child: Text('Como se chama?',
                      style: CustomTextStyles.inter18600preto2),
                ),
              ],
            ),
            SizedBox(
              height: 36,
            ),
            Observer(builder: (_) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: TextFormField(
                      textCapitalization: TextCapitalization.words,
                      style: CustomTextStyles.inter18preto2,
                      obscuringCharacter: '*',
                      enableSuggestions: false,
                      autocorrect: false,
                      onChanged: comoSeChamaStore.setComoSeChama,
                      keyboardType: TextInputType.name,
                      cursorColor: Colors.black,
                      decoration: new InputDecoration(
                        border: InputBorder.none,
                        counterText: '',
                        hintText: 'Nome',
                        hintStyle: CustomTextStyles.inter18pretoclaro400,
                      ),
                    ),
                  ),
                ],
              );
            }),
            Container(
              height: 2,
              width: MediaQuery.of(context).size.width * 0.9,
              color: AppColors.cinza,
            ),
            SizedBox(
              height: 24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Valor da transferência R\$ ',
                  style: CustomTextStyles.inter16pretoclaro400,
                ),
                Text(
                  '100,00',
                  style: CustomTextStyles.inter16pretoclaro600,
                ),
              ],
            ),
            Expanded(
              child: SizedBox(),
            ),
            Observer(builder: (_) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: comoSeChamaStore.isComoSeChamaValid
                        ? () {
                            Navigator.of(context).pushNamed('/nomedobanco');
                          }
                        : () {
                            null;
                          },
                    child: Container(
                      height: 54,
                      width: 54,
                      decoration: BoxDecoration(
                          color: comoSeChamaStore.isComoSeChamaValid
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
