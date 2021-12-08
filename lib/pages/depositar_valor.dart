import 'package:cifrapay/color/colors.dart';
import 'package:cifrapay/controller/controller.store.dart';
import 'package:cifrapay/textstyles/textstyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class DepositarValor extends StatefulWidget {
  @override
  _DepositarValorState createState() => _DepositarValorState();
}

class _DepositarValorState extends State<DepositarValor> {
   @override
  void initState() {
    // TODO: implement initState
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: AppColors.amarelostatusbar,
      ),
    );
  }
  DepositarValorStore depositarValorStore = DepositarValorStore();
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
                            image: AssetImage('assets/images/sair.png'),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Text(
                      'Digite o valor do boleto',
                      style: CustomTextStyles.inter16preto2500,
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Row(
                      children: [
                        Text(
                          'R\$',
                          style: CustomTextStyles.inter32pretoprimario,
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Container(
                          height: 40,
                          width: 100,
                          child: TextField(
                            style: CustomTextStyles.inter32amareloprimario,
                            keyboardType: TextInputType.number,
                            cursorHeight: 40,
                            cursorColor: AppColors.amareloprimario,
                            onChanged: depositarValorStore.setDepositarValor,
                            decoration: new InputDecoration.collapsed(
                              hintText: '00,00',
                              hintStyle:
                                  CustomTextStyles.inter32amareloprimario,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Container(
                      height: 2,
                      width: 155,
                      color: AppColors.cinza,
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        Text(
                          'Digite um valor entre R\$ 20,00 e R\$ 3.000,00',
                          style: CustomTextStyles.inter14preto2400,
                        ),
                      ],
                    ),
                  ],
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
                    onTap: depositarValorStore.isDepositarValorValid
                        ? () {
                            Navigator.of(context).pushNamed('/boletogerado');
                          }
                        : () {
                            null;
                          },
                    child: Container(
                      height: 54,
                      width: 54,
                      decoration: BoxDecoration(
                          color: depositarValorStore.isDepositarValorValid
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
