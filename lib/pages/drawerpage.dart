import 'package:cifrapay/color/colors.dart';
import 'package:cifrapay/textstyles/textstyles.dart';
import 'package:flutter/material.dart';

class DrawerPage extends StatefulWidget {
  @override
  _DrawerPageState createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                height: 60,
                width: MediaQuery.of(context).size.width,
                color: AppColors.pretocinzaprimario,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 60,
                        width: 60,
                        child: Image(
                          image: AssetImage('assets/images/compartilhar.png'),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          Container(
            height: 159,
            width: MediaQuery.of(context).size.width,
            color: AppColors.pretocinzaprimario,
            child: Center(
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 24,
                    backgroundColor: Colors.white,
                  ),
                  SizedBox(
                    height: 13,
                  ),
                  Text(
                    'Enzo Ribeiro',
                    style: CustomTextStyles.inter18preto2500,
                  ),
                  SizedBox(
                    height: 9,
                  ),
                  Text('Agência 0002 | Conta 4873319-2',
                      style: CustomTextStyles.inter14pretoclaro500),
                ],
              ),
            ),
          ),
          Container(
            height: 68,
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 68,
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: Row(
                    children: [
                      Image(
                        image: AssetImage('assets/images/meusdados.png'),
                      ),
                      SizedBox(
                        width: 18,
                      ),
                      Text(
                        'Meus dados',
                        style: CustomTextStyles.inter14preto500,
                      ),
                      Expanded(child: SizedBox()),
                      Icon(
                        Icons.keyboard_arrow_right,
                        color: AppColors.pretocinzaprimario,
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
                height: 2,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: AppColors.pretocinzaprimario,
                ),
              ),
            ],
          ),
          Container(
            height: 68,
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 68,
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: Row(
                    children: [
                      Image(
                        image: AssetImage('assets/images/contapj.png'),
                      ),
                      SizedBox(
                        width: 18,
                      ),
                      Text(
                        'Conta PJ',
                        style: CustomTextStyles.inter14preto500,
                      ),
                      Expanded(child: SizedBox()),
                      Icon(
                        Icons.keyboard_arrow_right,
                        color: AppColors.pretocinzaprimario,
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
                height: 2,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: AppColors.pretocinzaprimario,
                ),
              ),
            ],
          ),
          Container(
            height: 68,
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 68,
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: Row(
                    children: [
                      Image(
                        image: AssetImage('assets/images/configurar.png'),
                      ),
                      SizedBox(
                        width: 18,
                      ),
                      Text(
                        'Configurar APP',
                        style: CustomTextStyles.inter14preto500,
                      ),
                      Expanded(child: SizedBox()),
                      Icon(
                        Icons.keyboard_arrow_right,
                        color: AppColors.pretocinzaprimario,
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
                height: 2,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: AppColors.pretocinzaprimario,
                ),
              ),
            ],
          ),
          Container(
            height: 68,
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 68,
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: Row(
                    children: [
                      Image(
                        image: AssetImage('assets/images/logout.png'),
                      ),
                      SizedBox(
                        width: 18,
                      ),
                      Text(
                        'Sair do app',
                        style: CustomTextStyles.inter14preto500,
                      ),
                      Expanded(child: SizedBox()),
                      Icon(
                        Icons.keyboard_arrow_right,
                        color: AppColors.pretocinzaprimario,
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
                height: 2,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: AppColors.pretocinzaprimario,
                ),
              ),
            ],
          ),
          Container(
            height: 68,
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 68,
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: Row(
                    children: [
                      Text('Versão do App',
                          style: CustomTextStyles.inter14pretoclaro500),
                      Expanded(
                        child: SizedBox(),
                      ),
                      Text('1.0', style: CustomTextStyles.inter14pretoclaro500),
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
                height: 2,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: AppColors.pretocinzaprimario,
                ),
              ),
            ],
          ),
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
