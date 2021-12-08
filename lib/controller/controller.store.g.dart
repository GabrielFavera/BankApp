// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'controller.store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$LoginStore on _LoginStore, Store {
  Computed<bool>? _$isFormValidComputed;

  @override
  bool get isFormValid =>
      (_$isFormValidComputed ??= Computed<bool>(() => super.isFormValid,
              name: '_LoginStore.isFormValid'))
          .value;

  final _$cpfAtom = Atom(name: '_LoginStore.cpf');

  @override
  String get cpf {
    _$cpfAtom.reportRead();
    return super.cpf;
  }

  @override
  set cpf(String value) {
    _$cpfAtom.reportWrite(value, super.cpf, () {
      super.cpf = value;
    });
  }

  final _$_LoginStoreActionController = ActionController(name: '_LoginStore');

  @override
  void setCpf(String value) {
    final _$actionInfo =
        _$_LoginStoreActionController.startAction(name: '_LoginStore.setCpf');
    try {
      return super.setCpf(value);
    } finally {
      _$_LoginStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
cpf: ${cpf},
isFormValid: ${isFormValid}
    ''';
  }
}

mixin _$AbrirContaNomeStore on _AbrirContaNomeStore, Store {
  Computed<bool>? _$isFormNomeValidComputed;

  @override
  bool get isFormNomeValid =>
      (_$isFormNomeValidComputed ??= Computed<bool>(() => super.isFormNomeValid,
              name: '_AbrirContaNomeStore.isFormNomeValid'))
          .value;

  final _$nomeAtom = Atom(name: '_AbrirContaNomeStore.nome');

  @override
  String get nome {
    _$nomeAtom.reportRead();
    return super.nome;
  }

  @override
  set nome(String value) {
    _$nomeAtom.reportWrite(value, super.nome, () {
      super.nome = value;
    });
  }

  final _$_AbrirContaNomeStoreActionController =
      ActionController(name: '_AbrirContaNomeStore');

  @override
  void setNome(String value) {
    final _$actionInfo = _$_AbrirContaNomeStoreActionController.startAction(
        name: '_AbrirContaNomeStore.setNome');
    try {
      return super.setNome(value);
    } finally {
      _$_AbrirContaNomeStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
nome: ${nome},
isFormNomeValid: ${isFormNomeValid}
    ''';
  }
}

mixin _$AbrirContaDataNascimentoStore on _AbrirContaDataNascimentoStore, Store {
  Computed<bool>? _$isFormDataNascimentoValidComputed;

  @override
  bool get isFormDataNascimentoValid => (_$isFormDataNascimentoValidComputed ??=
          Computed<bool>(() => super.isFormDataNascimentoValid,
              name: '_AbrirContaDataNascimentoStore.isFormDataNascimentoValid'))
      .value;

  final _$datanascimentoAtom =
      Atom(name: '_AbrirContaDataNascimentoStore.datanascimento');

  @override
  String get datanascimento {
    _$datanascimentoAtom.reportRead();
    return super.datanascimento;
  }

  @override
  set datanascimento(String value) {
    _$datanascimentoAtom.reportWrite(value, super.datanascimento, () {
      super.datanascimento = value;
    });
  }

  final _$_AbrirContaDataNascimentoStoreActionController =
      ActionController(name: '_AbrirContaDataNascimentoStore');

  @override
  void setDataNascimento(String value) {
    final _$actionInfo = _$_AbrirContaDataNascimentoStoreActionController
        .startAction(name: '_AbrirContaDataNascimentoStore.setDataNascimento');
    try {
      return super.setDataNascimento(value);
    } finally {
      _$_AbrirContaDataNascimentoStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
datanascimento: ${datanascimento},
isFormDataNascimentoValid: ${isFormDataNascimentoValid}
    ''';
  }
}

mixin _$AbrirCpfStore on _AbrirCpfStore, Store {
  Computed<bool>? _$isCpfValidComputed;

  @override
  bool get isCpfValid =>
      (_$isCpfValidComputed ??= Computed<bool>(() => super.isCpfValid,
              name: '_AbrirCpfStore.isCpfValid'))
          .value;
  Computed<bool>? _$isAbrirCpfValidComputed;

  @override
  bool get isAbrirCpfValid =>
      (_$isAbrirCpfValidComputed ??= Computed<bool>(() => super.isAbrirCpfValid,
              name: '_AbrirCpfStore.isAbrirCpfValid'))
          .value;

  final _$abrircpfAtom = Atom(name: '_AbrirCpfStore.abrircpf');

  @override
  String get abrircpf {
    _$abrircpfAtom.reportRead();
    return super.abrircpf;
  }

  @override
  set abrircpf(String value) {
    _$abrircpfAtom.reportWrite(value, super.abrircpf, () {
      super.abrircpf = value;
    });
  }

  final _$checkAtom = Atom(name: '_AbrirCpfStore.check');

  @override
  bool get check {
    _$checkAtom.reportRead();
    return super.check;
  }

  @override
  set check(bool value) {
    _$checkAtom.reportWrite(value, super.check, () {
      super.check = value;
    });
  }

  final _$_AbrirCpfStoreActionController =
      ActionController(name: '_AbrirCpfStore');

  @override
  void setAbrirCpf(String value) {
    final _$actionInfo = _$_AbrirCpfStoreActionController.startAction(
        name: '_AbrirCpfStore.setAbrirCpf');
    try {
      return super.setAbrirCpf(value);
    } finally {
      _$_AbrirCpfStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic isCheckAtivo() {
    final _$actionInfo = _$_AbrirCpfStoreActionController.startAction(
        name: '_AbrirCpfStore.isCheckAtivo');
    try {
      return super.isCheckAtivo();
    } finally {
      _$_AbrirCpfStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
abrircpf: ${abrircpf},
check: ${check},
isCpfValid: ${isCpfValid},
isAbrirCpfValid: ${isAbrirCpfValid}
    ''';
  }
}

mixin _$AbrirContaCelularEmailStore on _AbrirContaCelularEmailStore, Store {
  Computed<bool>? _$isEmailValidComputed;

  @override
  bool get isEmailValid =>
      (_$isEmailValidComputed ??= Computed<bool>(() => super.isEmailValid,
              name: '_AbrirContaCelularEmailStore.isEmailValid'))
          .value;
  Computed<bool>? _$isCelularEmailValidComputed;

  @override
  bool get isCelularEmailValid => (_$isCelularEmailValidComputed ??=
          Computed<bool>(() => super.isCelularEmailValid,
              name: '_AbrirContaCelularEmailStore.isCelularEmailValid'))
      .value;

  final _$celularAtom = Atom(name: '_AbrirContaCelularEmailStore.celular');

  @override
  String get celular {
    _$celularAtom.reportRead();
    return super.celular;
  }

  @override
  set celular(String value) {
    _$celularAtom.reportWrite(value, super.celular, () {
      super.celular = value;
    });
  }

  final _$emailAtom = Atom(name: '_AbrirContaCelularEmailStore.email');

  @override
  String get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  final _$_AbrirContaCelularEmailStoreActionController =
      ActionController(name: '_AbrirContaCelularEmailStore');

  @override
  void setCelular(String value) {
    final _$actionInfo = _$_AbrirContaCelularEmailStoreActionController
        .startAction(name: '_AbrirContaCelularEmailStore.setCelular');
    try {
      return super.setCelular(value);
    } finally {
      _$_AbrirContaCelularEmailStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setEmail(String value) {
    final _$actionInfo = _$_AbrirContaCelularEmailStoreActionController
        .startAction(name: '_AbrirContaCelularEmailStore.setEmail');
    try {
      return super.setEmail(value);
    } finally {
      _$_AbrirContaCelularEmailStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
celular: ${celular},
email: ${email},
isEmailValid: ${isEmailValid},
isCelularEmailValid: ${isCelularEmailValid}
    ''';
  }
}

mixin _$AbrirCodigoStore on _AbrirCodigoStore, Store {
  Computed<bool>? _$isCodigoValidComputed;

  @override
  bool get isCodigoValid =>
      (_$isCodigoValidComputed ??= Computed<bool>(() => super.isCodigoValid,
              name: '_AbrirCodigoStore.isCodigoValid'))
          .value;

  final _$codigoAtom = Atom(name: '_AbrirCodigoStore.codigo');

  @override
  String get codigo {
    _$codigoAtom.reportRead();
    return super.codigo;
  }

  @override
  set codigo(String value) {
    _$codigoAtom.reportWrite(value, super.codigo, () {
      super.codigo = value;
    });
  }

  final _$_AbrirCodigoStoreActionController =
      ActionController(name: '_AbrirCodigoStore');

  @override
  void setCodigo(String value) {
    final _$actionInfo = _$_AbrirCodigoStoreActionController.startAction(
        name: '_AbrirCodigoStore.setCodigo');
    try {
      return super.setCodigo(value);
    } finally {
      _$_AbrirCodigoStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
codigo: ${codigo},
isCodigoValid: ${isCodigoValid}
    ''';
  }
}

mixin _$AbrirCodigoEmailStore on _AbrirCodigoEmailStore, Store {
  Computed<bool>? _$isCodigoEmailValidComputed;

  @override
  bool get isCodigoEmailValid => (_$isCodigoEmailValidComputed ??=
          Computed<bool>(() => super.isCodigoEmailValid,
              name: '_AbrirCodigoEmailStore.isCodigoEmailValid'))
      .value;

  final _$codigoemailAtom = Atom(name: '_AbrirCodigoEmailStore.codigoemail');

  @override
  String get codigoemail {
    _$codigoemailAtom.reportRead();
    return super.codigoemail;
  }

  @override
  set codigoemail(String value) {
    _$codigoemailAtom.reportWrite(value, super.codigoemail, () {
      super.codigoemail = value;
    });
  }

  final _$abrirModaisAsyncAction =
      AsyncAction('_AbrirCodigoEmailStore.abrirModais');

  @override
  Future<void> abrirModais({required BuildContext context}) {
    return _$abrirModaisAsyncAction
        .run(() => super.abrirModais(context: context));
  }

  final _$_AbrirCodigoEmailStoreActionController =
      ActionController(name: '_AbrirCodigoEmailStore');

  @override
  void setCodigoEmail(String value) {
    final _$actionInfo = _$_AbrirCodigoEmailStoreActionController.startAction(
        name: '_AbrirCodigoEmailStore.setCodigoEmail');
    try {
      return super.setCodigoEmail(value);
    } finally {
      _$_AbrirCodigoEmailStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
codigoemail: ${codigoemail},
isCodigoEmailValid: ${isCodigoEmailValid}
    ''';
  }
}

mixin _$AbrirContaEnderecoStore on _AbrirContaEnderecoStore, Store {
  Computed<bool>? _$isEnderecoValidComputed;

  @override
  bool get isEnderecoValid =>
      (_$isEnderecoValidComputed ??= Computed<bool>(() => super.isEnderecoValid,
              name: '_AbrirContaEnderecoStore.isEnderecoValid'))
          .value;

  final _$cepAtom = Atom(name: '_AbrirContaEnderecoStore.cep');

  @override
  String get cep {
    _$cepAtom.reportRead();
    return super.cep;
  }

  @override
  set cep(String value) {
    _$cepAtom.reportWrite(value, super.cep, () {
      super.cep = value;
    });
  }

  final _$enderecoAtom = Atom(name: '_AbrirContaEnderecoStore.endereco');

  @override
  String get endereco {
    _$enderecoAtom.reportRead();
    return super.endereco;
  }

  @override
  set endereco(String value) {
    _$enderecoAtom.reportWrite(value, super.endereco, () {
      super.endereco = value;
    });
  }

  final _$numeroenderecoAtom =
      Atom(name: '_AbrirContaEnderecoStore.numeroendereco');

  @override
  String get numeroendereco {
    _$numeroenderecoAtom.reportRead();
    return super.numeroendereco;
  }

  @override
  set numeroendereco(String value) {
    _$numeroenderecoAtom.reportWrite(value, super.numeroendereco, () {
      super.numeroendereco = value;
    });
  }

  final _$bairroAtom = Atom(name: '_AbrirContaEnderecoStore.bairro');

  @override
  String get bairro {
    _$bairroAtom.reportRead();
    return super.bairro;
  }

  @override
  set bairro(String value) {
    _$bairroAtom.reportWrite(value, super.bairro, () {
      super.bairro = value;
    });
  }

  final _$estadoAtom = Atom(name: '_AbrirContaEnderecoStore.estado');

  @override
  String get estado {
    _$estadoAtom.reportRead();
    return super.estado;
  }

  @override
  set estado(String value) {
    _$estadoAtom.reportWrite(value, super.estado, () {
      super.estado = value;
    });
  }

  final _$cidadeAtom = Atom(name: '_AbrirContaEnderecoStore.cidade');

  @override
  String get cidade {
    _$cidadeAtom.reportRead();
    return super.cidade;
  }

  @override
  set cidade(String value) {
    _$cidadeAtom.reportWrite(value, super.cidade, () {
      super.cidade = value;
    });
  }

  final _$_AbrirContaEnderecoStoreActionController =
      ActionController(name: '_AbrirContaEnderecoStore');

  @override
  void setCep(String value) {
    final _$actionInfo = _$_AbrirContaEnderecoStoreActionController.startAction(
        name: '_AbrirContaEnderecoStore.setCep');
    try {
      return super.setCep(value);
    } finally {
      _$_AbrirContaEnderecoStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setEndereco(String value) {
    final _$actionInfo = _$_AbrirContaEnderecoStoreActionController.startAction(
        name: '_AbrirContaEnderecoStore.setEndereco');
    try {
      return super.setEndereco(value);
    } finally {
      _$_AbrirContaEnderecoStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setNumeroEndereco(String value) {
    final _$actionInfo = _$_AbrirContaEnderecoStoreActionController.startAction(
        name: '_AbrirContaEnderecoStore.setNumeroEndereco');
    try {
      return super.setNumeroEndereco(value);
    } finally {
      _$_AbrirContaEnderecoStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setBairro(String value) {
    final _$actionInfo = _$_AbrirContaEnderecoStoreActionController.startAction(
        name: '_AbrirContaEnderecoStore.setBairro');
    try {
      return super.setBairro(value);
    } finally {
      _$_AbrirContaEnderecoStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setEstado(String value) {
    final _$actionInfo = _$_AbrirContaEnderecoStoreActionController.startAction(
        name: '_AbrirContaEnderecoStore.setEstado');
    try {
      return super.setEstado(value);
    } finally {
      _$_AbrirContaEnderecoStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setCidade(String value) {
    final _$actionInfo = _$_AbrirContaEnderecoStoreActionController.startAction(
        name: '_AbrirContaEnderecoStore.setCidade');
    try {
      return super.setCidade(value);
    } finally {
      _$_AbrirContaEnderecoStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
cep: ${cep},
endereco: ${endereco},
numeroendereco: ${numeroendereco},
bairro: ${bairro},
estado: ${estado},
cidade: ${cidade},
isEnderecoValid: ${isEnderecoValid}
    ''';
  }
}

mixin _$AbrirContaSenhaStore on _AbrirContaSenhaStore, Store {
  Computed<bool>? _$isFormSenhaValidComputed;

  @override
  bool get isFormSenhaValid => (_$isFormSenhaValidComputed ??= Computed<bool>(
          () => super.isFormSenhaValid,
          name: '_AbrirContaSenhaStore.isFormSenhaValid'))
      .value;

  final _$senhaAtom = Atom(name: '_AbrirContaSenhaStore.senha');

  @override
  String get senha {
    _$senhaAtom.reportRead();
    return super.senha;
  }

  @override
  set senha(String value) {
    _$senhaAtom.reportWrite(value, super.senha, () {
      super.senha = value;
    });
  }

  final _$passwordVisibleAtom =
      Atom(name: '_AbrirContaSenhaStore.passwordVisible');

  @override
  bool get passwordVisible {
    _$passwordVisibleAtom.reportRead();
    return super.passwordVisible;
  }

  @override
  set passwordVisible(bool value) {
    _$passwordVisibleAtom.reportWrite(value, super.passwordVisible, () {
      super.passwordVisible = value;
    });
  }

  final _$_AbrirContaSenhaStoreActionController =
      ActionController(name: '_AbrirContaSenhaStore');

  @override
  void setSenha(String value) {
    final _$actionInfo = _$_AbrirContaSenhaStoreActionController.startAction(
        name: '_AbrirContaSenhaStore.setSenha');
    try {
      return super.setSenha(value);
    } finally {
      _$_AbrirContaSenhaStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void togglePasswordVisibility() {
    final _$actionInfo = _$_AbrirContaSenhaStoreActionController.startAction(
        name: '_AbrirContaSenhaStore.togglePasswordVisibility');
    try {
      return super.togglePasswordVisibility();
    } finally {
      _$_AbrirContaSenhaStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
senha: ${senha},
passwordVisible: ${passwordVisible},
isFormSenhaValid: ${isFormSenhaValid}
    ''';
  }
}

mixin _$LoginSenhaStore on _LoginSenhaStore, Store {
  Computed<bool>? _$isFormSenhaValidComputed;

  @override
  bool get isFormSenhaValid => (_$isFormSenhaValidComputed ??= Computed<bool>(
          () => super.isFormSenhaValid,
          name: '_LoginSenhaStore.isFormSenhaValid'))
      .value;

  final _$senhaAtom = Atom(name: '_LoginSenhaStore.senha');

  @override
  String get senha {
    _$senhaAtom.reportRead();
    return super.senha;
  }

  @override
  set senha(String value) {
    _$senhaAtom.reportWrite(value, super.senha, () {
      super.senha = value;
    });
  }

  final _$passwordVisibleAtom = Atom(name: '_LoginSenhaStore.passwordVisible');

  @override
  bool get passwordVisible {
    _$passwordVisibleAtom.reportRead();
    return super.passwordVisible;
  }

  @override
  set passwordVisible(bool value) {
    _$passwordVisibleAtom.reportWrite(value, super.passwordVisible, () {
      super.passwordVisible = value;
    });
  }

  final _$_LoginSenhaStoreActionController =
      ActionController(name: '_LoginSenhaStore');

  @override
  void setSenha(String value) {
    final _$actionInfo = _$_LoginSenhaStoreActionController.startAction(
        name: '_LoginSenhaStore.setSenha');
    try {
      return super.setSenha(value);
    } finally {
      _$_LoginSenhaStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void togglePasswordVisibility() {
    final _$actionInfo = _$_LoginSenhaStoreActionController.startAction(
        name: '_LoginSenhaStore.togglePasswordVisibility');
    try {
      return super.togglePasswordVisibility();
    } finally {
      _$_LoginSenhaStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
senha: ${senha},
passwordVisible: ${passwordVisible},
isFormSenhaValid: ${isFormSenhaValid}
    ''';
  }
}

mixin _$TransferirPraQuemStore on _TransferirPraQuemStore, Store {
  Computed<bool>? _$isPraQuemValidComputed;

  @override
  bool get isPraQuemValid =>
      (_$isPraQuemValidComputed ??= Computed<bool>(() => super.isPraQuemValid,
              name: '_TransferirPraQuemStore.isPraQuemValid'))
          .value;

  final _$praquemAtom = Atom(name: '_TransferirPraQuemStore.praquem');

  @override
  String get praquem {
    _$praquemAtom.reportRead();
    return super.praquem;
  }

  @override
  set praquem(String value) {
    _$praquemAtom.reportWrite(value, super.praquem, () {
      super.praquem = value;
    });
  }

  final _$_TransferirPraQuemStoreActionController =
      ActionController(name: '_TransferirPraQuemStore');

  @override
  void setPraQuem(String value) {
    final _$actionInfo = _$_TransferirPraQuemStoreActionController.startAction(
        name: '_TransferirPraQuemStore.setPraQuem');
    try {
      return super.setPraQuem(value);
    } finally {
      _$_TransferirPraQuemStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
praquem: ${praquem},
isPraQuemValid: ${isPraQuemValid}
    ''';
  }
}

mixin _$ComoSeChamaStore on _ComoSeChamaStore, Store {
  Computed<bool>? _$isComoSeChamaValidComputed;

  @override
  bool get isComoSeChamaValid => (_$isComoSeChamaValidComputed ??=
          Computed<bool>(() => super.isComoSeChamaValid,
              name: '_ComoSeChamaStore.isComoSeChamaValid'))
      .value;

  final _$comosechamaAtom = Atom(name: '_ComoSeChamaStore.comosechama');

  @override
  String get comosechama {
    _$comosechamaAtom.reportRead();
    return super.comosechama;
  }

  @override
  set comosechama(String value) {
    _$comosechamaAtom.reportWrite(value, super.comosechama, () {
      super.comosechama = value;
    });
  }

  final _$_ComoSeChamaStoreActionController =
      ActionController(name: '_ComoSeChamaStore');

  @override
  void setComoSeChama(String value) {
    final _$actionInfo = _$_ComoSeChamaStoreActionController.startAction(
        name: '_ComoSeChamaStore.setComoSeChama');
    try {
      return super.setComoSeChama(value);
    } finally {
      _$_ComoSeChamaStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
comosechama: ${comosechama},
isComoSeChamaValid: ${isComoSeChamaValid}
    ''';
  }
}

mixin _$AgenciaContaStore on _AgenciaContaStore, Store {
  Computed<bool>? _$isAgenciaContaValidComputed;

  @override
  bool get isAgenciaContaValid => (_$isAgenciaContaValidComputed ??=
          Computed<bool>(() => super.isAgenciaContaValid,
              name: '_AgenciaContaStore.isAgenciaContaValid'))
      .value;

  final _$agenciaAtom = Atom(name: '_AgenciaContaStore.agencia');

  @override
  String get agencia {
    _$agenciaAtom.reportRead();
    return super.agencia;
  }

  @override
  set agencia(String value) {
    _$agenciaAtom.reportWrite(value, super.agencia, () {
      super.agencia = value;
    });
  }

  final _$contaAtom = Atom(name: '_AgenciaContaStore.conta');

  @override
  String get conta {
    _$contaAtom.reportRead();
    return super.conta;
  }

  @override
  set conta(String value) {
    _$contaAtom.reportWrite(value, super.conta, () {
      super.conta = value;
    });
  }

  final _$tipodecontaAtom = Atom(name: '_AgenciaContaStore.tipodeconta');

  @override
  String get tipodeconta {
    _$tipodecontaAtom.reportRead();
    return super.tipodeconta;
  }

  @override
  set tipodeconta(String value) {
    _$tipodecontaAtom.reportWrite(value, super.tipodeconta, () {
      super.tipodeconta = value;
    });
  }

  final _$_AgenciaContaStoreActionController =
      ActionController(name: '_AgenciaContaStore');

  @override
  void setAgencia(String value) {
    final _$actionInfo = _$_AgenciaContaStoreActionController.startAction(
        name: '_AgenciaContaStore.setAgencia');
    try {
      return super.setAgencia(value);
    } finally {
      _$_AgenciaContaStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setConta(String value) {
    final _$actionInfo = _$_AgenciaContaStoreActionController.startAction(
        name: '_AgenciaContaStore.setConta');
    try {
      return super.setConta(value);
    } finally {
      _$_AgenciaContaStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setTipoDeConta(String value) {
    final _$actionInfo = _$_AgenciaContaStoreActionController.startAction(
        name: '_AgenciaContaStore.setTipoDeConta');
    try {
      return super.setTipoDeConta(value);
    } finally {
      _$_AgenciaContaStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
agencia: ${agencia},
conta: ${conta},
tipodeconta: ${tipodeconta},
isAgenciaContaValid: ${isAgenciaContaValid}
    ''';
  }
}

mixin _$Senha4DigitosStore on _Senha4DigitosStore, Store {
  Computed<bool>? _$isSenha4DigitosValidComputed;

  @override
  bool get isSenha4DigitosValid => (_$isSenha4DigitosValidComputed ??=
          Computed<bool>(() => super.isSenha4DigitosValid,
              name: '_Senha4DigitosStore.isSenha4DigitosValid'))
      .value;

  final _$senha4DigitosAtom = Atom(name: '_Senha4DigitosStore.senha4Digitos');

  @override
  String get senha4Digitos {
    _$senha4DigitosAtom.reportRead();
    return super.senha4Digitos;
  }

  @override
  set senha4Digitos(String value) {
    _$senha4DigitosAtom.reportWrite(value, super.senha4Digitos, () {
      super.senha4Digitos = value;
    });
  }

  final _$carregando2AsyncAction =
      AsyncAction('_Senha4DigitosStore.carregando2');

  @override
  Future<void> carregando2({required BuildContext context}) {
    return _$carregando2AsyncAction
        .run(() => super.carregando2(context: context));
  }

  final _$_Senha4DigitosStoreActionController =
      ActionController(name: '_Senha4DigitosStore');

  @override
  void setSenha4Digitos(String value) {
    final _$actionInfo = _$_Senha4DigitosStoreActionController.startAction(
        name: '_Senha4DigitosStore.setSenha4Digitos');
    try {
      return super.setSenha4Digitos(value);
    } finally {
      _$_Senha4DigitosStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
senha4Digitos: ${senha4Digitos},
isSenha4DigitosValid: ${isSenha4DigitosValid}
    ''';
  }
}

mixin _$ResumoStore on _ResumoStore, Store {
  Computed<bool>? _$isResumoValidComputed;

  @override
  bool get isResumoValid =>
      (_$isResumoValidComputed ??= Computed<bool>(() => super.isResumoValid,
              name: '_ResumoStore.isResumoValid'))
          .value;

  final _$quandoAtom = Atom(name: '_ResumoStore.quando');

  @override
  String get quando {
    _$quandoAtom.reportRead();
    return super.quando;
  }

  @override
  set quando(String value) {
    _$quandoAtom.reportWrite(value, super.quando, () {
      super.quando = value;
    });
  }

  final _$tipodetransferenciaAtom =
      Atom(name: '_ResumoStore.tipodetransferencia');

  @override
  String get tipodetransferencia {
    _$tipodetransferenciaAtom.reportRead();
    return super.tipodetransferencia;
  }

  @override
  set tipodetransferencia(String value) {
    _$tipodetransferenciaAtom.reportWrite(value, super.tipodetransferencia, () {
      super.tipodetransferencia = value;
    });
  }

  final _$_ResumoStoreActionController = ActionController(name: '_ResumoStore');

  @override
  void setQuando(String value) {
    final _$actionInfo = _$_ResumoStoreActionController.startAction(
        name: '_ResumoStore.setQuando');
    try {
      return super.setQuando(value);
    } finally {
      _$_ResumoStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setTipoDeTransferencia(String value) {
    final _$actionInfo = _$_ResumoStoreActionController.startAction(
        name: '_ResumoStore.setTipoDeTransferencia');
    try {
      return super.setTipoDeTransferencia(value);
    } finally {
      _$_ResumoStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
quando: ${quando},
tipodetransferencia: ${tipodetransferencia},
isResumoValid: ${isResumoValid}
    ''';
  }
}

mixin _$DescricaoStore on _DescricaoStore, Store {
  Computed<bool>? _$isDescricaoValidComputed;

  @override
  bool get isDescricaoValid => (_$isDescricaoValidComputed ??= Computed<bool>(
          () => super.isDescricaoValid,
          name: '_DescricaoStore.isDescricaoValid'))
      .value;

  final _$descricaoAtom = Atom(name: '_DescricaoStore.descricao');

  @override
  String get descricao {
    _$descricaoAtom.reportRead();
    return super.descricao;
  }

  @override
  set descricao(String value) {
    _$descricaoAtom.reportWrite(value, super.descricao, () {
      super.descricao = value;
    });
  }

  final _$_DescricaoStoreActionController =
      ActionController(name: '_DescricaoStore');

  @override
  void setDescricao(String value) {
    final _$actionInfo = _$_DescricaoStoreActionController.startAction(
        name: '_DescricaoStore.setDescricao');
    try {
      return super.setDescricao(value);
    } finally {
      _$_DescricaoStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
descricao: ${descricao},
isDescricaoValid: ${isDescricaoValid}
    ''';
  }
}

mixin _$CodigoBoletoStore on _CodigoBoletoStore, Store {
  Computed<bool>? _$isCodigoBoletoValidComputed;

  @override
  bool get isCodigoBoletoValid => (_$isCodigoBoletoValidComputed ??=
          Computed<bool>(() => super.isCodigoBoletoValid,
              name: '_CodigoBoletoStore.isCodigoBoletoValid'))
      .value;

  final _$codigoboletoAtom = Atom(name: '_CodigoBoletoStore.codigoboleto');

  @override
  String get codigoboleto {
    _$codigoboletoAtom.reportRead();
    return super.codigoboleto;
  }

  @override
  set codigoboleto(String value) {
    _$codigoboletoAtom.reportWrite(value, super.codigoboleto, () {
      super.codigoboleto = value;
    });
  }

  final _$_CodigoBoletoStoreActionController =
      ActionController(name: '_CodigoBoletoStore');

  @override
  void setCodigoBoleto(String value) {
    final _$actionInfo = _$_CodigoBoletoStoreActionController.startAction(
        name: '_CodigoBoletoStore.setCodigoBoleto');
    try {
      return super.setCodigoBoleto(value);
    } finally {
      _$_CodigoBoletoStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
codigoboleto: ${codigoboleto},
isCodigoBoletoValid: ${isCodigoBoletoValid}
    ''';
  }
}

mixin _$PagarSenha4DigitosStore on _PagarSenha4DigitosStore, Store {
  Computed<bool>? _$isPagarSenha4DigitosValidComputed;

  @override
  bool get isPagarSenha4DigitosValid => (_$isPagarSenha4DigitosValidComputed ??=
          Computed<bool>(() => super.isPagarSenha4DigitosValid,
              name: '_PagarSenha4DigitosStore.isPagarSenha4DigitosValid'))
      .value;

  final _$pagarSenha4DigitosAtom =
      Atom(name: '_PagarSenha4DigitosStore.pagarSenha4Digitos');

  @override
  String get pagarSenha4Digitos {
    _$pagarSenha4DigitosAtom.reportRead();
    return super.pagarSenha4Digitos;
  }

  @override
  set pagarSenha4Digitos(String value) {
    _$pagarSenha4DigitosAtom.reportWrite(value, super.pagarSenha4Digitos, () {
      super.pagarSenha4Digitos = value;
    });
  }

  final _$carregando3AsyncAction =
      AsyncAction('_PagarSenha4DigitosStore.carregando3');

  @override
  Future<void> carregando3({required BuildContext context}) {
    return _$carregando3AsyncAction
        .run(() => super.carregando3(context: context));
  }

  final _$_PagarSenha4DigitosStoreActionController =
      ActionController(name: '_PagarSenha4DigitosStore');

  @override
  void setPagarSenha4Digitos(String value) {
    final _$actionInfo = _$_PagarSenha4DigitosStoreActionController.startAction(
        name: '_PagarSenha4DigitosStore.setPagarSenha4Digitos');
    try {
      return super.setPagarSenha4Digitos(value);
    } finally {
      _$_PagarSenha4DigitosStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
pagarSenha4Digitos: ${pagarSenha4Digitos},
isPagarSenha4DigitosValid: ${isPagarSenha4DigitosValid}
    ''';
  }
}

mixin _$DepositarValorStore on _DepositarValorStore, Store {
  Computed<bool>? _$isDepositarValorValidComputed;

  @override
  bool get isDepositarValorValid => (_$isDepositarValorValidComputed ??=
          Computed<bool>(() => super.isDepositarValorValid,
              name: '_DepositarValorStore.isDepositarValorValid'))
      .value;

  final _$depositarvalorAtom =
      Atom(name: '_DepositarValorStore.depositarvalor');

  @override
  String get depositarvalor {
    _$depositarvalorAtom.reportRead();
    return super.depositarvalor;
  }

  @override
  set depositarvalor(String value) {
    _$depositarvalorAtom.reportWrite(value, super.depositarvalor, () {
      super.depositarvalor = value;
    });
  }

  final _$_DepositarValorStoreActionController =
      ActionController(name: '_DepositarValorStore');

  @override
  void setDepositarValor(String value) {
    final _$actionInfo = _$_DepositarValorStoreActionController.startAction(
        name: '_DepositarValorStore.setDepositarValor');
    try {
      return super.setDepositarValor(value);
    } finally {
      _$_DepositarValorStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
depositarvalor: ${depositarvalor},
isDepositarValorValid: ${isDepositarValorValid}
    ''';
  }
}

mixin _$TransferirValorStore on _TransferirValorStore, Store {
  Computed<bool>? _$isTransferirValorValidComputed;

  @override
  bool get isTransferirValorValid => (_$isTransferirValorValidComputed ??=
          Computed<bool>(() => super.isTransferirValorValid,
              name: '_TransferirValorStore.isTransferirValorValid'))
      .value;

  final _$transferirvalorAtom =
      Atom(name: '_TransferirValorStore.transferirvalor');

  @override
  String get transferirvalor {
    _$transferirvalorAtom.reportRead();
    return super.transferirvalor;
  }

  @override
  set transferirvalor(String value) {
    _$transferirvalorAtom.reportWrite(value, super.transferirvalor, () {
      super.transferirvalor = value;
    });
  }

  final _$_TransferirValorStoreActionController =
      ActionController(name: '_TransferirValorStore');

  @override
  void setTransferirValor(String value) {
    final _$actionInfo = _$_TransferirValorStoreActionController.startAction(
        name: '_TransferirValorStore.setTransferirValor');
    try {
      return super.setTransferirValor(value);
    } finally {
      _$_TransferirValorStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
transferirvalor: ${transferirvalor},
isTransferirValorValid: ${isTransferirValorValid}
    ''';
  }
}

mixin _$RecargaNumeroStore on _RecargaNumeroStore, Store {
  Computed<bool>? _$isRecargaNumeroValidComputed;

  @override
  bool get isRecargaNumeroValid => (_$isRecargaNumeroValidComputed ??=
          Computed<bool>(() => super.isRecargaNumeroValid,
              name: '_RecargaNumeroStore.isRecargaNumeroValid'))
      .value;

  final _$recarganumeroAtom = Atom(name: '_RecargaNumeroStore.recarganumero');

  @override
  String get recarganumero {
    _$recarganumeroAtom.reportRead();
    return super.recarganumero;
  }

  @override
  set recarganumero(String value) {
    _$recarganumeroAtom.reportWrite(value, super.recarganumero, () {
      super.recarganumero = value;
    });
  }

  final _$_RecargaNumeroStoreActionController =
      ActionController(name: '_RecargaNumeroStore');

  @override
  void setRecarganumero(String value) {
    final _$actionInfo = _$_RecargaNumeroStoreActionController.startAction(
        name: '_RecargaNumeroStore.setRecarganumero');
    try {
      return super.setRecarganumero(value);
    } finally {
      _$_RecargaNumeroStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
recarganumero: ${recarganumero},
isRecargaNumeroValid: ${isRecargaNumeroValid}
    ''';
  }
}

mixin _$RecargaSenha4DigitosStore on _RecargaSenha4DigitosStore, Store {
  Computed<bool>? _$isRecargaSenha4DigitosValidComputed;

  @override
  bool get isRecargaSenha4DigitosValid =>
      (_$isRecargaSenha4DigitosValidComputed ??= Computed<bool>(
              () => super.isRecargaSenha4DigitosValid,
              name: '_RecargaSenha4DigitosStore.isRecargaSenha4DigitosValid'))
          .value;

  final _$recargaSenha4DigitosAtom =
      Atom(name: '_RecargaSenha4DigitosStore.recargaSenha4Digitos');

  @override
  String get recargaSenha4Digitos {
    _$recargaSenha4DigitosAtom.reportRead();
    return super.recargaSenha4Digitos;
  }

  @override
  set recargaSenha4Digitos(String value) {
    _$recargaSenha4DigitosAtom.reportWrite(value, super.recargaSenha4Digitos,
        () {
      super.recargaSenha4Digitos = value;
    });
  }

  final _$carregando2AsyncAction =
      AsyncAction('_RecargaSenha4DigitosStore.carregando2');

  @override
  Future<void> carregando2({required BuildContext context}) {
    return _$carregando2AsyncAction
        .run(() => super.carregando2(context: context));
  }

  final _$_RecargaSenha4DigitosStoreActionController =
      ActionController(name: '_RecargaSenha4DigitosStore');

  @override
  void setRecargaSenha4Digitos(String value) {
    final _$actionInfo =
        _$_RecargaSenha4DigitosStoreActionController.startAction(
            name: '_RecargaSenha4DigitosStore.setRecargaSenha4Digitos');
    try {
      return super.setRecargaSenha4Digitos(value);
    } finally {
      _$_RecargaSenha4DigitosStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
recargaSenha4Digitos: ${recargaSenha4Digitos},
isRecargaSenha4DigitosValid: ${isRecargaSenha4DigitosValid}
    ''';
  }
}
