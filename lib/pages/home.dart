import 'package:cifrapay/color/colors.dart';
import 'package:cifrapay/pages/abrir_conta_nome.dart';
import 'package:cifrapay/pages/login.dart';
import 'package:cifrapay/textstyles/textstyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    // TODO: implement initState
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Image(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            image: AssetImage('assets/images/background.jpg'),
            fit: BoxFit.cover,
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.4618,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: <Color>[
                  Color(0xf000000).withOpacity(0.2),
                  Color(0xff121212).withOpacity(0),
                ],
              ),
            ),
          ),
          Column(
            children: [
              SizedBox(height: 71),
              RichText(
                text: TextSpan(
                  text: 'Bank',
                  style: CustomTextStyles.fonte40bran700,
                  children: <TextSpan>[
                    TextSpan(
                      text: '',
                      style: CustomTextStyles.fonte40branco,
                    ),
                  ],
                ),
              ),
              Expanded(child: SizedBox()),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
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
                          child: AbrirContaNome(),
                        ),
                      );
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
                          'ABRIR CONTA',
                          style: CustomTextStyles.inter14preto,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  GestureDetector(
                    onTap: () {
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
                          child: Login(),
                        ),
                      );
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
                          'JÁ TENHO CONTA',
                          style: CustomTextStyles.inter14branco,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 24,
              ),
            ],
          )
        ],
      ),
    );
  }
}
