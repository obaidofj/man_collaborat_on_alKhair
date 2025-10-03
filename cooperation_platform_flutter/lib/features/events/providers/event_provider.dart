import 'package:flutter/foundation.dart';
class EventProvider extends ChangeNotifier {
  List events = [];
  bool isLoading = false;
  Future<void> fetchEvents() async {
    isLoading = true;
    notifyListeners();
    await Future.delayed(Duration(seconds: 1));
    isLoading = false;
    notifyListeners();
  }
}
