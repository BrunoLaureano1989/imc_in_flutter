

import 'package:flutter/material.dart';

class Pessoa {
  String _nome = '';
  double _altura = 0;
  double _peso = 0;
  String _dateInicial = '';

  Pessoa(this._nome, this._altura, this._peso, this._dateInicial);

  void setNome(String nome) {
    _nome = nome;
  }

  String get getNome {
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

    void setDate (String dateTime) {
    _dateInicial = dateTime;
  }

  String getDate() {
    return _dateInicial;
  }

 double calculate(double altura,double peso) {
    try {
      double valor = peso / (altura * altura);
      return valor;
    } catch (e) {
      return 0.0;
    }
  }

  double get calculate2{
     try {
      double valor = _peso / (_altura * _altura);
      return valor;
    } catch (e) {
      return 0.0;
    }
  }
  
  String get tabela2{
      if (calculate2 < 18.5) {
      return 'magreza';
    } else if (calculate2 >= 18.5 && calculate2 <= 24.9) {
      return 'peso normal';
    } else if (calculate2 >= 25 && calculate2 <= 29.9) {
      return 'Sobrepeso';
    } else if (calculate2 >= 30 && calculate2 <= 34.9) {
      return 'obesidade I';
    } else if (calculate2 >= 35 && calculate2 <= 40) {
      return 'obsidade II';
    } else {
      return 'obesidade III';
    }
  }

  Color get color{
     if (calculate2 < 18.5) {
      return Colors.blueAccent;
    } else if (calculate2 >= 18.5 && calculate2 <= 24.9) {
      return Colors.green;
    } else if (calculate2 >= 25 && calculate2 <= 29.9) {
      return Colors.yellow;
    } else if (calculate2 >= 30 && calculate2 <= 34.9) {
      return Colors.orange;
    } else if (calculate2 >= 35 && calculate2 <= 40) {
      return Colors.red;
    } else {
      return Colors.redAccent;
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
