import 'package:cifrapay/pages/depositar_valor.dart';
import 'package:cifrapay/pages/deposito_boletogerado.dart';
import 'package:cifrapay/pages/extrato.dart';
import 'package:cifrapay/pages/pagar_camera_boleto.dart';
import 'package:cifrapay/pages/pagar_carregando3.dart';
import 'package:cifrapay/pages/pagar_codigoboleto.dart';
import 'package:cifrapay/pages/pagar_comprovante.dart';
import 'package:cifrapay/pages/pagar_estapagando.dart';
import 'package:cifrapay/pages/pagar_opcoes_iniciais.dart';
import 'package:cifrapay/pages/pagar_pagamento_realizado.dart';
import 'package:cifrapay/pages/pagar_senha4gitios.dart';
import 'package:cifrapay/pages/recarga_comprovante.dart';
import 'package:cifrapay/pages/recarga_numero_celular.dart';
import 'package:cifrapay/pages/recarga_opcoes.dart';
import 'package:cifrapay/pages/recarga_operadora.dart';
import 'package:cifrapay/pages/recarga_realizada.dart';
import 'package:cifrapay/pages/recarga_resumo.dart';
import 'package:cifrapay/pages/recarga_senha4gitios.dart';
import 'package:cifrapay/pages/recarga_valor.dart';
import 'package:cifrapay/pages/transferir_carregando2.dart';
import 'package:cifrapay/pages/abrir_conta_endereco.dart';
import 'package:cifrapay/pages/abrir_conta_foto_documento.dart';
import 'package:cifrapay/pages/abrir_conta_nome.dart';
import 'package:cifrapay/pages/abrir_conta_pagina_branca_da_foto.dart';
import 'package:cifrapay/pages/abrir_conta_senha.dart';
import 'package:cifrapay/pages/abrir_conta_tirar_foto_documento.dart';
import 'package:cifrapay/pages/abrir_conta_tudo_certo.dart';
import 'package:cifrapay/pages/login_verifique_seu_email.dart';
import 'package:cifrapay/pages/transferir_agencia_conta.dart';
import 'package:cifrapay/pages/transferir_como_se_chama.dart';
import 'package:cifrapay/pages/transferir_comprovante.dart';
import 'package:cifrapay/pages/transferir_descricao.dart';
import 'package:cifrapay/pages/transferir_nome_do_banco.dart';
import 'package:cifrapay/pages/transferir_pra_quem.dart';
import 'package:cifrapay/pages/transferir_resumo.dart';
import 'package:cifrapay/pages/transferir_senha4gitios.dart';
import 'package:cifrapay/pages/transferir_transferencia_realizada.dart';
import 'package:cifrapay/pages/transferir_valor.dart';
import 'package:cifrapay/pages/telainicialamarelaebranca.dart';
import 'package:flutter/material.dart';
import 'pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
        '/abrircontanome': (context) => AbrirContaNome(),
        '/endereco': (context) => AbrirContaEndereco(),
        '/fotodocumento': (context) => FotoDocumento(),
        '/tirarfotodocumento': (context) => TirarFotoDocumento(),
        '/paginabrancadafoto': (context) => PaginaBrancaDaFoto(),
        '/abrircontasenha': (context) => AbrirContaSenha(),
        '/tudocerto': (context) => TudoCerto(),
        '/verifiqueseuemail': (context) => VerifiqueSeuEmail(),
        '/telainicialpreta': (context) => TelaInicialPreta(),
        '/transferir': (context) => TransferirValor(),
        '/transferirpraquem': (context) => TransferirPraQuem(),
        '/comosechama': (context) => ComoSeChama(),
        '/nomedobanco': (context) => NomeDoBanco(),
        '/agenciaconta': (context) => AgenciaConta(),
        '/senha4digitos': (context) => Senha4Digitos(),
        '/resumo': (context) => Resumo(),
        '/descricao': (context) => Descricao(),
        '/carregando2': (context) => AbrirContaCarregando2(),
        '/transferenciarealizada': (context) => TransferenciaRealizada(),
        '/comprovante': (context) => Comprovante(),
        '/opcoesiniciais': (context) => OpcoesIniciais(),
        '/cameraboleto': (context) => CameraBoleto(),
        '/codigoboleto': (context) => CodigoBoleto(),
        '/estapagando': (context) => EstaPagando(),
        '/carregando3': (context) => PagarCarregando3(),
        '/pagarcomprovante': (context) => PagarComprovante(),
        '/pagamentorealizado': (context) => PagamentoRealizado(),
        '/pagarsenha4digitos': (context) => PagarSenha4Digitos(),
        '/depositarvalor': (context) => DepositarValor(),
        '/boletogerado': (context) => BoletoGerado(),
        '/recarganumero': (context) => RecargaNumero(),
        '/recargaoperadora': (context) => RecargaOperadora(),
        '/recargaopcoes': (context) => RecargaOpcoes(),
        '/recargavalor': (context) => RecargaValor(),
        '/recargaresumo': (context) => RecargaResumo(),
        '/recargasenha4digitos': (context) => RecargaSenha4Digitos(),
        '/recargarealizada': (context) => RecargaRealizada(),
        '/recargacomprovante': (context) => RecargaComprovante(),
        '/extrato': (context) => Extrato(),
      },
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
