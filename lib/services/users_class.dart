

class Pessoas {
  String _nome = '';
  double _altura = 0;
  double _peso = 0;
  DateTime _dateInicial = DateTime.now();

  void setNome(String nome) {
    _nome = nome;
  }

  String getNome() {
    return _nome;
  }

  void setAltura(double altura) {
    _altura = altura;
  }

  double getAltura() {
    return _altura;
  }

  void setPeso(double peso) {
    _peso = peso;
  }

  double getPeso() {
    return _peso;
  }

    void setDate (DateTime dateTime) {
    _dateInicial = dateTime;
  }

  DateTime getDate() {
    return _dateInicial;
  }

  calculate(double altura, double peso) {
    try {
      double valor = peso / (altura * altura);
      return valor;
    } catch (e) {
      return 0.0;
    }
  }

  dynamic tabela(double valor) {
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
