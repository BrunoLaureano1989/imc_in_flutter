import 'package:intl/intl.dart';

extension FormatLocaleDate on DateTime {

  String getDateCompleta() {
    var inputFormat = DateFormat('dd/MM/yyyy HH:mm');
    return inputFormat.format(toLocal());
  }

  String getDate() {
    var inputFormat = DateFormat('dd/MM/yyyy');
    return inputFormat.format(toLocal());
  }

  String getHour() {
    var inputFormat = DateFormat('HH:mm');
    return inputFormat.format(toLocal());
  }
}
