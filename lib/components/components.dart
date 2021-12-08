import 'package:cifrapay/color/colors.dart';
import 'package:cifrapay/textstyles/textstyles.dart';
import 'package:flutter/material.dart';

class BotaoContinuarCinza extends StatefulWidget {
  @override
  _BotaoContinuarCinzaState createState() => _BotaoContinuarCinzaState();
}

class _BotaoContinuarCinzaState extends State<BotaoContinuarCinza> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 54,
      width: MediaQuery.of(context).size.width * 0.9,
      decoration: BoxDecoration(
          color: AppColors.pretocinzaprimario,
          borderRadius: BorderRadius.circular(4)),
      child: Center(
        child: Text(
          'CONTINUAR',
          style: CustomTextStyles.inter14cinza,
        ),
      ),
    );
  }
}

class BotaoContinuarAmarelo extends StatefulWidget {
  @override
  _BotaoContinuarAmareloState createState() => _BotaoContinuarAmareloState();
}

class _BotaoContinuarAmareloState extends State<BotaoContinuarAmarelo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 54,
      width: MediaQuery.of(context).size.width * 0.9,
      decoration: BoxDecoration(
          color: AppColors.amareloprimario,
          borderRadius: BorderRadius.circular(4)),
      child: Center(
        child: Text(
          'CONTINUAR',
          style: CustomTextStyles.inter14cinza,
        ),
      ),
    );
  }
}
