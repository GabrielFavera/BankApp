import 'package:cifrapay/pages/abrir_conta_carregando.dart';
import 'package:cifrapay/pages/abrir_conta_data_nascimento.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
part 'controller.store.g.dart';

class LoginStore = _LoginStore with _$LoginStore;

abstract class _LoginStore with Store {
  _LoginStore() {
    autorun((_) {
      print(isFormValid);
    });
  }

  @observable
  String cpf = "";

  @action
  void setCpf(String value) => cpf = value;

  @computed
  bool get isFormValid => cpf.length > 13;
}

class AbrirContaNomeStore = _AbrirContaNomeStore with _$AbrirContaNomeStore;

abstract class _AbrirContaNomeStore with Store {
  AbrirContaNomeStore() {
    autorun((_) {
      print(isFormNomeValid);
    });
  }

  @observable
  String nome = "";

  @action
  void setNome(String value) => nome = value;

  @computed
  bool get isFormNomeValid => nome.length > 2;
}

class AbrirContaDataNascimentoStore = _AbrirContaDataNascimentoStore
    with _$AbrirContaDataNascimentoStore;

abstract class _AbrirContaDataNascimentoStore with Store {
  AbrirContaDataNascimentoStore() {
    autorun((_) {
      print(isFormDataNascimentoValid);
    });
  }

  @observable
  String datanascimento = "";

  @action
  void setDataNascimento(String value) => datanascimento = value;

  @computed
  bool get isFormDataNascimentoValid => datanascimento.length > 9;
}

class AbrirCpfStore = _AbrirCpfStore with _$AbrirCpfStore;

abstract class _AbrirCpfStore with Store {
  AbrirDataNascimentoStore() {
    autorun((_) {
      print(isCpfValid);
    });
  }

  @observable
  String abrircpf = "";

  @action
  void setAbrirCpf(String value) => abrircpf = value;

  @observable
  bool check = false;

  @action
  isCheckAtivo() => check = !check;

  @computed
  bool get isCpfValid =>
      RegExp(r"^((\d{3}).(\d{3}).(\d{3})-(\d{2}))*$").hasMatch(abrircpf);

  @computed
  bool get isAbrirCpfValid =>
      abrircpf.length > 13 && check == true && isCpfValid == true;
}

class AbrirContaCelularEmailStore = _AbrirContaCelularEmailStore
    with _$AbrirContaCelularEmailStore;

abstract class _AbrirContaCelularEmailStore with Store {
  AbrirContaCelularEmailStore() {
    autorun((_) {
      print(isCelularEmailValid);
    });
  }

  @observable
  String celular = "";

  @action
  void setCelular(String value) => celular = value;

  @observable
  String email = "";

  @action
  void setEmail(String value) => email = value;

  @computed
  bool get isEmailValid => RegExp(
          r"^([-a-zA-Z0-9_-]*@(gmail|yahoo|ymail|rocketmail|bol|hotmail|live|msn|ig|globomail|oi|pop|inteligweb|r7|folha|zipmail).(com|info|gov|net|org|tv)(.[-a-z]{2})?)*$")
      .hasMatch(email);

  @computed
  bool get isCelularEmailValid =>
      celular.length > 14 && isEmailValid == true && email != "";
}

class AbrirCodigoStore = _AbrirCodigoStore with _$AbrirCodigoStore;

abstract class _AbrirCodigoStore with Store {
  AbrirCodigoStore() {
    autorun((_) {
      print(isCodigoValid);
    });
  }

  @observable
  String codigo = "";

  @action
  void setCodigo(String value) => codigo = value;

  @computed
  bool get isCodigoValid => codigo.length > 3;
}

class AbrirCodigoEmailStore = _AbrirCodigoEmailStore
    with _$AbrirCodigoEmailStore;

abstract class _AbrirCodigoEmailStore with Store {
  AbrirCodigoEmailStore() {
    autorun((_) {
      print(isCodigoEmailValid);
    });
  }

  @action
  Future<void> abrirModais({required BuildContext context}) async {
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
        child: AbrirContaCarregando(),
      ),
    );
    // Espera 3 segundos
    await Future.delayed(
      const Duration(
        seconds: 3,
      ),
    );

    // Fecha o primeiro modal
    Navigator.pop(context);

    // Abre o proxima pagina

    Navigator.of(context).pushNamed('/endereco');
  }

  @observable
  String codigoemail = "";

  @action
  void setCodigoEmail(String value) => codigoemail = value;

  @computed
  bool get isCodigoEmailValid => codigoemail.length > 3;
}

class AbrirContaEnderecoStore = _AbrirContaEnderecoStore
    with _$AbrirContaEnderecoStore;

abstract class _AbrirContaEnderecoStore with Store {
  @observable
  String cep = "";

  @action
  void setCep(String value) => cep = value;

  @observable
  String endereco = "";

  @action
  void setEndereco(String value) => endereco = value;

  @observable
  String numeroendereco = "";

  @action
  void setNumeroEndereco(String value) => numeroendereco = value;

  @observable
  String bairro = "";

  @action
  void setBairro(String value) => bairro = value;

  @observable
  String estado = "";

  @action
  void setEstado(String value) => estado = value;

  @observable
  String cidade = "";

  @action
  void setCidade(String value) => cidade = value;

  @computed
  bool get isEnderecoValid =>
      cep.length > 8 &&
      endereco.length > 3 &&
      numeroendereco.length > 1 &&
      bairro.length > 1;
}

class AbrirContaSenhaStore = _AbrirContaSenhaStore with _$AbrirContaSenhaStore;

abstract class _AbrirContaSenhaStore with Store {
  AbrirCodigoEmailStore() {
    autorun((_) {
      print(isFormSenhaValid);
    });
  }

  @observable
  String senha = "";

  @action
  void setSenha(String value) => senha = value;

  @computed
  bool get isFormSenhaValid => senha.length > 3;

  @observable
  bool passwordVisible = false;

  @action
  void togglePasswordVisibility() => passwordVisible = !passwordVisible;
}

class LoginSenhaStore = _LoginSenhaStore with _$LoginSenhaStore;

abstract class _LoginSenhaStore with Store {
  @observable
  String senha = "";

  @action
  void setSenha(String value) => senha = value;

  @computed
  bool get isFormSenhaValid => senha.length > 3;

  @observable
  bool passwordVisible = false;

  @action
  void togglePasswordVisibility() => passwordVisible = !passwordVisible;
}

class TransferirPraQuemStore = _TransferirPraQuemStore
    with _$TransferirPraQuemStore;

abstract class _TransferirPraQuemStore with Store {
  TransferirPraQuemStore() {
    autorun((_) {
      print(isPraQuemValid);
    });
  }

  @observable
  String praquem = "";

  @action
  void setPraQuem(String value) => praquem = value;

  @computed
  bool get isPraQuemValid => praquem.length > 3;
}

class ComoSeChamaStore = _ComoSeChamaStore with _$ComoSeChamaStore;

abstract class _ComoSeChamaStore with Store {
  ComoSeChamaStore() {
    autorun((_) {
      print(isComoSeChamaValid);
    });
  }

  @observable
  String comosechama = "";

  @action
  void setComoSeChama(String value) => comosechama = value;

  @computed
  bool get isComoSeChamaValid => comosechama.length > 2;
}

class AgenciaContaStore = _AgenciaContaStore with _$AgenciaContaStore;

abstract class _AgenciaContaStore with Store {
  AgenciaContaStore() {
    autorun((_) {
      print(isAgenciaContaValid);
    });
  }

  @observable
  String agencia = "";

  @action
  void setAgencia(String value) => agencia = value;

  @observable
  String conta = "";

  @action
  void setConta(String value) => conta = value;

  @observable
  String tipodeconta = "";

  @action
  void setTipoDeConta(String value) => tipodeconta = value;

  @computed
  bool get isAgenciaContaValid => agencia.length > 2 && conta.length > 1;
}

class Senha4DigitosStore = _Senha4DigitosStore with _$Senha4DigitosStore;

abstract class _Senha4DigitosStore with Store {
  Senha4DigitosStore() {
    autorun((_) {
      print(isSenha4DigitosValid);
    });
  }

  @observable
  String senha4Digitos = "";

  @action
  void setSenha4Digitos(String value) => senha4Digitos = value;

  @computed
  bool get isSenha4DigitosValid => senha4Digitos.length > 3;

  @action
  Future<void> carregando2({required BuildContext context}) async {
    Navigator.of(context).pushNamed('/carregando2');
    // Espera 3 segundos
    await Future.delayed(
      const Duration(
        seconds: 3,
      ),
    );
    // Abre o proxima pagina

    Navigator.of(context).pushNamed('/transferenciarealizada');
  }
}

class ResumoStore = _ResumoStore with _$ResumoStore;

abstract class _ResumoStore with Store {
  ResumoStore() {
    autorun((_) {
      print(isResumoValid);
    });
  }

  @observable
  String quando = "";

  @action
  void setQuando(String value) => quando = value;

  @observable
  String tipodetransferencia = "";

  @action
  void setTipoDeTransferencia(String value) => tipodetransferencia = value;

  @computed
  bool get isResumoValid => quando.length > 1 && tipodetransferencia.length > 1;
}

class DescricaoStore = _DescricaoStore with _$DescricaoStore;

abstract class _DescricaoStore with Store {
  DescricaoStore() {
    autorun((_) {
      print(isDescricaoValid);
    });
  }

  @observable
  String descricao = "";

  @action
  void setDescricao(String value) => descricao = value;

  @computed
  bool get isDescricaoValid => descricao.length > 1;
}

class CodigoBoletoStore = _CodigoBoletoStore with _$CodigoBoletoStore;

abstract class _CodigoBoletoStore with Store {
  DescricaoStore() {
    autorun((_) {
      print(isCodigoBoletoValid);
    });
  }

  @observable
  String codigoboleto = "";

  @action
  void setCodigoBoleto(String value) => codigoboleto = value;

  @computed
  bool get isCodigoBoletoValid => codigoboleto.length > 53;
}

class PagarSenha4DigitosStore = _PagarSenha4DigitosStore
    with _$PagarSenha4DigitosStore;

abstract class _PagarSenha4DigitosStore with Store {
  PagarSenha4DigitosStore() {
    autorun((_) {
      print(isPagarSenha4DigitosValid);
    });
  }

  @observable
  String pagarSenha4Digitos = "";

  @action
  void setPagarSenha4Digitos(String value) => pagarSenha4Digitos = value;

  @computed
  bool get isPagarSenha4DigitosValid => pagarSenha4Digitos.length > 3;

  @action
  Future<void> carregando3({required BuildContext context}) async {
    Navigator.of(context).pushNamed('/carregando3');
    // Espera 3 segundos
    await Future.delayed(
      const Duration(
        seconds: 3,
      ),
    );
    // Abre o proxima pagina

    Navigator.of(context).pushNamed('/pagamentorealizado');
  }
}

class DepositarValorStore = _DepositarValorStore with _$DepositarValorStore;

abstract class _DepositarValorStore with Store {
  DepositarValorStore() {
    autorun((_) {
      print(isDepositarValorValid);
    });
  }

  @observable
  String depositarvalor = "";

  @action
  void setDepositarValor(String value) => depositarvalor = value;

  @computed
  bool get isDepositarValorValid => depositarvalor.length >= 1;
}

class TransferirValorStore = _TransferirValorStore with _$TransferirValorStore;

abstract class _TransferirValorStore with Store {
  TransferirValorStore() {
    autorun((_) {
      print(isTransferirValorValid);
    });
  }

  @observable
  String transferirvalor = "";

  @action
  void setTransferirValor(String value) => transferirvalor = value;

  @computed
  bool get isTransferirValorValid => transferirvalor.length >= 1;
}

class RecargaNumeroStore = _RecargaNumeroStore with _$RecargaNumeroStore;

abstract class _RecargaNumeroStore with Store {
  RecargaNumeroStore() {
    autorun((_) {
      print(isRecargaNumeroValid);
    });
  }

  @observable
  String recarganumero = "";

  @action
  void setRecarganumero(String value) => recarganumero = value;

  @computed
  bool get isRecargaNumeroValid => recarganumero.length > 14;
}

class RecargaSenha4DigitosStore = _RecargaSenha4DigitosStore with _$RecargaSenha4DigitosStore;

abstract class _RecargaSenha4DigitosStore with Store {
  RecargaSenha4DigitosStore() {
    autorun((_) {
      print(isRecargaSenha4DigitosValid);
    });
  }

  @observable
  String recargaSenha4Digitos = "";

  @action
  void setRecargaSenha4Digitos(String value) => recargaSenha4Digitos = value;

  @computed
  bool get isRecargaSenha4DigitosValid => recargaSenha4Digitos.length > 3;

  @action
  Future<void> carregando2({required BuildContext context}) async {
    Navigator.of(context).pushNamed('/carregando2');
    // Espera 3 segundos
    await Future.delayed(
      const Duration(
        seconds: 3,
      ),
    );
    // Abre o proxima pagina

    Navigator.of(context).pushNamed('/transferenciarealizada');
  }
}
