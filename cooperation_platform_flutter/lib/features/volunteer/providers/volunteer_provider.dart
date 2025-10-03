import 'package:flutter/foundation.dart';

class VolunteerProvider extends ChangeNotifier {
  List<Map<String, dynamic>> _opportunities = [];
  bool _isLoading = false;
  String? _errorMessage;

  List<Map<String, dynamic>> get opportunities => _opportunities;
  bool get isLoading => _isLoading;
  String? get errorMessage => _errorMessage;

  Future<void> fetchOpportunities() async {
    _isLoading = true;
    notifyListeners();
    
    await Future.delayed(const Duration(seconds: 1));
    
    _opportunities = [
      {
        'id': '1',
        'title': 'توزيع الطعام على المحتاجين',
        'description': 'مساعدة في توزيع وجبات الطعام',
        'category': 'إغاثة',
        'location': 'الرياض',
        'date': '2024-01-15',
        'volunteersNeeded': 20,
        'volunteersRegistered': 12,
      },
    ];
    
    _isLoading = false;
    notifyListeners();
  }
}
