import 'package:cifrapay/color/colors.dart';
import 'package:cifrapay/pages/drawerpage.dart';
import 'package:cifrapay/textstyles/textstyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TelaInicialPreta extends StatefulWidget {
  @override
  _TelaInicialPretaState createState() => _TelaInicialPretaState();
}

class _TelaInicialPretaState extends State<TelaInicialPreta> {
  final GlobalKey<ScaffoldState> _scaffoldKey =
      new GlobalKey<ScaffoldState>(); // ADD THIS LINE
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
        drawer: Container(
          width: MediaQuery.of(context).size.width,
          child: Drawer(
            child: DrawerPage(),
          ),
        ),
        backgroundColor: AppColors.brancoprimario,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                height: 83,
                width: MediaQuery.of(context).size.width,
                color: AppColors.amarelostatusbar,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 83,
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: Row(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Olá! Enzo Ribeiro',
                                    style: CustomTextStyles.inter22branco400,
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Expanded(
                            child: SizedBox(),
                          ),
                          Container(
                            height: 40,
                            width: 45,
                            color: AppColors.amarelostatusbar,
                            child: Icon(Icons.visibility_outlined,
                                size: 25, color: Colors.white),
                          ),
                          Builder(builder: (context) {
                            return GestureDetector(
                              onTap: () {
                                Scaffold.of(context).openDrawer();
                              },
                              child: Container(
                                height: 40,
                                width: 45,
                                color: AppColors.amarelostatusbar,
                                child: Align(
                                  alignment: Alignment.centerRight,
                                  child: Icon(Icons.menu,
                                      size: 25, color: Colors.white),
                                ),
                              ),
                            );
                          }),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 83,
                width: MediaQuery.of(context).size.width,
                color: AppColors.brancoprimario,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 30,
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: Row(
                        children: [
                          Container(
                            height: 22,
                            child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                'R\$',
                                style: CustomTextStyles.inter14preto600,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            '807,90',
                            style: CustomTextStyles.inter24preto400,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed('/extrato');
                },
                child: Container(
                  height: 47.14,
                  width: MediaQuery.of(context).size.width,
                  color: AppColors.pretocinzaprimario,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 47.14,
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: Row(
                          children: [
                            Text(
                              'VER EXTRATO',
                              style: CustomTextStyles.inter10preto400,
                            ),
                            Expanded(
                              child: SizedBox(),
                            ),
                            Icon(
                              Icons.arrow_forward_ios_rounded,
                              size: 13,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 310,
                width: MediaQuery.of(context).size.width,
                color: AppColors.brancoprimario,
                child: Column(
                  children: [
                    SizedBox(
                      height: 24,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 281,
                          width: MediaQuery.of(context).size.width * 0.9,
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.topCenter,
                                child: Wrap(
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.of(context)
                                            .pushNamed('/opcoesiniciais');
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.all(6.5),
                                        child: Container(
                                          height: 102,
                                          width: 100,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(4),
                                            color: AppColors.pretocinzaprimario,
                                          ),
                                          child: Column(
                                            children: [
                                              SizedBox(
                                                height: 32,
                                              ),
                                              Image(
                                                image: AssetImage(
                                                    'assets/images/pagamento.png'),
                                              ),
                                              SizedBox(
                                                height: 24,
                                              ),
                                              Text(
                                                'Pagar',
                                                style: CustomTextStyles
                                                    .inter12pretoclaro600,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.of(context)
                                            .pushNamed('/transferir');
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.all(6.5),
                                        child: Container(
                                          height: 102,
                                          width: 100,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(4),
                                            color: AppColors.pretocinzaprimario,
                                          ),
                                          child: Column(
                                            children: [
                                              SizedBox(
                                                height: 32,
                                              ),
                                              Image(
                                                image: AssetImage(
                                                    'assets/images/transferir.png'),
                                              ),
                                              SizedBox(
                                                height: 24,
                                              ),
                                              Text(
                                                'Transferir',
                                                style: CustomTextStyles
                                                    .inter12pretoclaro600,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.of(context)
                                            .pushNamed('/depositarvalor');
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.all(6.5),
                                        child: Container(
                                          height: 102,
                                          width: 100,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(4),
                                            color: AppColors.pretocinzaprimario,
                                          ),
                                          child: Column(
                                            children: [
                                              SizedBox(
                                                height: 32,
                                              ),
                                              Image(
                                                image: AssetImage(
                                                    'assets/images/depositar.png'),
                                              ),
                                              SizedBox(
                                                height: 24,
                                              ),
                                              Text(
                                                'Depositar',
                                                style: CustomTextStyles
                                                    .inter12pretoclaro600,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.of(context)
                                            .pushNamed('/recarganumero');
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.all(6.5),
                                        child: Container(
                                          height: 102,
                                          width: 100,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(4),
                                            color: AppColors.pretocinzaprimario,
                                          ),
                                          child: Column(
                                            children: [
                                              SizedBox(
                                                height: 32,
                                              ),
                                              Image(
                                                image: AssetImage(
                                                    'assets/images/recarga.png'),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Text(
                                                'Recarga\nCelular',
                                                textAlign: TextAlign.center,
                                                style: CustomTextStyles
                                                    .inter12pretoclaro600,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(6.5),
                                      child: Container(
                                        height: 102,
                                        width: 100,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(4),
                                          color: AppColors.pretocinzaprimario,
                                        ),
                                        child: Column(
                                          children: [
                                            SizedBox(
                                              height: 32,
                                            ),
                                            Image(
                                              image: AssetImage(
                                                  'assets/images/recargabilhete.png'),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              'Recarga\nBilhete Único',
                                              textAlign: TextAlign.center,
                                              style: CustomTextStyles
                                                  .inter12pretoclaro600,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image(
                                    image: AssetImage(
                                        'assets/images/setasobe.png'),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 2.5,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: AppColors.pretocinzaprimario,
                    ),
                  ),
                ],
              ),
              Container(
                height: 158,
                width: MediaQuery.of(context).size.width,
                color: AppColors.brancoprimario,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 158,
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 24,
                          ),
                          Row(
                            children: [
                              Text(
                                'Cartão de crédito',
                                style: CustomTextStyles.inter18preto500,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 18,
                          ),
                          Stack(
                            children: [
                              Container(
                                height: 22,
                                width: MediaQuery.of(context).size.width * 0.9,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  color: AppColors.pretoclaro,
                                ),
                              ),
                              Container(
                                height: 22,
                                width: MediaQuery.of(context).size.width * 0.9,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      child: Container(
                                        height: 22,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.50,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(4),
                                          color: AppColors.azulclaro
                                              .withOpacity(0.7),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                height: 22,
                                width: MediaQuery.of(context).size.width * 0.9,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      child: Container(
                                        height: 22,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.40,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(4),
                                          color: AppColors.azulclaroescuro
                                              .withOpacity(0.5),
                                        ),
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Utilizado',
                                style: CustomTextStyles.inter16cinzatextform,
                              ),
                              Text(
                                'Disponível',
                                style: CustomTextStyles.inter16cinzatextform,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'R\$',
                                style: CustomTextStyles.inter14cinzatextform300,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                '472,90',
                                style: CustomTextStyles.inter16preto600,
                              ),
                              Expanded(child: SizedBox()),
                              Text(
                                'R\$',
                                style: CustomTextStyles.inter14cinzatextform300,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                '2.538,10',
                                style: CustomTextStyles.inter16preto600,
                              ),
                            ],
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
                    height: 2.5,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: AppColors.pretocinzaprimario,
                    ),
                  ),
                ],
              ),
              Container(
                height: 150,
                width: MediaQuery.of(context).size.width,
                color: AppColors.brancoprimario,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 150,
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Solicite já seu Bank Card!',
                              style: CustomTextStyles.inter18preto500),
                          Text('O mais novo e prático cartão de crédito',
                              style: CustomTextStyles.inter14cinzatextform),
                          SizedBox(
                            height: 16,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () {},
                                child: Container(
                                  height: 54,
                                  width:
                                      MediaQuery.of(context).size.width * 0.9,
                                  decoration: BoxDecoration(
                                      color: AppColors.amareloprimario,
                                      borderRadius: BorderRadius.circular(27)),
                                  child: Center(
                                    child: Text(
                                      'Solicitar Bank Card',
                                      style: CustomTextStyles.inter14preto,
                                    ),
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
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
