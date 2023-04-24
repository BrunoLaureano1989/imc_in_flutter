

class Pessoa {
  String _nome = '';
  String _altura = '';
  String _peso = '';
  String _dateInicial = '';

  Pessoa(this._nome, this._altura, this._peso, this._dateInicial);

  void setNome(String nome) {
    _nome = nome;
  }

  String get getNome {
    return _nome;
  }

  void setAltura(String altura) {
    _altura = altura;
  }

  String getAltura() {
    return _altura;
  }

  void setPeso(String peso) {
    _peso = peso;
  }

  String getPeso() {
    return _peso;
  }

    void setDate (String dateTime) {
    _dateInicial = dateTime;
  }

  String getDate() {
    return _dateInicial;
  }

  calculate(altura,peso) {
    
    try {
      double valor = peso / (altura * altura);
      return valor;
    } catch (e) {
      return 0.0;
    }
  }

  dynamic tabela(valor) {
    if (valor < 18.5) {
      return 'magreza';
    } else if (valor >= 18.5 && valor <= 24.9) {
      return 'peso normal';
    } else if (valor >= 25 && valor <= 29.9) {
      return 'Sobrepeso';
    } else if (valor >= 30 && valor <= 34.9) {
      return 'obesidade I';
    } else if (valor >= 35 && valor <= 40) {
      return 'obsidade II';
    } else {
      return 'obesidade III';
    }
  }
}
