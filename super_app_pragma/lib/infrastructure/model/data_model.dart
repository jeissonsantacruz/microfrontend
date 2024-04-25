import 'package:flutter/foundation.dart';

class DataModel extends ChangeNotifier {
  String _data = 'User Name';

  String get data => _data;

  void setData(String newData) {
    _data = newData;
    notifyListeners(); // Notifica a los escuchadores de cambios
  }
}
