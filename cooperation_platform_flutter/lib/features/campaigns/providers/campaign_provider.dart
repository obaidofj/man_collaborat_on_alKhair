import 'package:flutter/foundation.dart';

class CampaignProvider extends ChangeNotifier {
  List<Map<String, dynamic>> _campaigns = [];
  bool _isLoading = false;
  String? _errorMessage;

  // Getters
  List<Map<String, dynamic>> get campaigns => _campaigns;
  bool get isLoading => _isLoading;
  String? get errorMessage => _errorMessage;

  // جلب الحملات
  Future<void> fetchCampaigns() async {
    _setLoading(true);
    _clearError();

    try {
      // محاكاة استدعاء API
      await Future.delayed(const Duration(seconds: 1));
      
      _campaigns = [
        {
          'id': '1',
          'title': 'حملة إغاثة الأسر المحتاجة',
          'description': 'مساعدة الأسر المتضررة من الظروف الاقتصادية الصعبة',
          'targetAmount': 100000,
          'raisedAmount': 75000,
          'progress': 0.75,
          'category': 'إغاثة',
          'organizationName': 'جمعية البر الخيرية',
          'daysLeft': 15,
          'donorsCount': 245,
          'image': null,
          'status': 'active',
        },
        {
          'id': '2',
          'title': 'مشروع تعليم الأطفال',
          'description': 'توفير التعليم المجاني للأطفال في المناطق النائية',
          'targetAmount': 150000,
          'raisedAmount': 90000,
          'progress': 0.60,
          'category': 'تعليم',
          'organizationName': 'مؤسسة التعليم للجميع',
          'daysLeft': 30,
          'donorsCount': 180,
          'image': null,
          'status': 'active',
        },
        {
          'id': '3',
          'title': 'حملة الرعاية الصحية',
          'description': 'تقديم الخدمات الطبية المجانية للمحتاجين',
          'targetAmount': 200000,
          'raisedAmount': 120000,
          'progress': 0.60,
          'category': 'صحة',
          'organizationName': 'مستشفى الأمل الخيري',
          'daysLeft': 45,
          'donorsCount': 320,
          'image': null,
          'status': 'active',
        },
      ];
      
      _setLoading(false);
    } catch (e) {
      _setError('حدث خطأ أثناء جلب الحملات');
      _setLoading(false);
    }
  }

  // إنشاء حملة جديدة
  Future<bool> createCampaign(Map<String, dynamic> campaignData) async {
    _setLoading(true);
    _clearError();

    try {
      // محاكاة استدعاء API
      await Future.delayed(const Duration(seconds: 2));
      
      final newCampaign = {
        'id': DateTime.now().millisecondsSinceEpoch.toString(),
        ...campaignData,
        'raisedAmount': 0,
        'progress': 0.0,
        'donorsCount': 0,
        'status': 'pending',
      };
      
      _campaigns.insert(0, newCampaign);
      _setLoading(false);
      return true;
    } catch (e) {
      _setError('حدث خطأ أثناء إنشاء الحملة');
      _setLoading(false);
      return false;
    }
  }

  // التبرع لحملة
  Future<bool> donateToCampaign(String campaignId, double amount) async {
    _setLoading(true);
    _clearError();

    try {
      // محاكاة استدعاء API
      await Future.delayed(const Duration(seconds: 2));
      
      final campaignIndex = _campaigns.indexWhere((c) => c['id'] == campaignId);
      if (campaignIndex != -1) {
        final campaign = _campaigns[campaignIndex];
        campaign['raisedAmount'] += amount;
        campaign['donorsCount'] += 1;
        campaign['progress'] = campaign['raisedAmount'] / campaign['targetAmount'];
        
        notifyListeners();
      }
      
      _setLoading(false);
      return true;
    } catch (e) {
      _setError('حدث خطأ أثناء التبرع');
      _setLoading(false);
      return false;
    }
  }

  // البحث في الحملات
  List<Map<String, dynamic>> searchCampaigns(String query) {
    if (query.isEmpty) return _campaigns;
    
    return _campaigns.where((campaign) {
      return campaign['title'].toLowerCase().contains(query.toLowerCase()) ||
             campaign['description'].toLowerCase().contains(query.toLowerCase()) ||
             campaign['category'].toLowerCase().contains(query.toLowerCase());
    }).toList();
  }

  // تصفية الحملات حسب الفئة
  List<Map<String, dynamic>> filterCampaignsByCategory(String category) {
    if (category == 'الكل') return _campaigns;
    
    return _campaigns.where((campaign) => campaign['category'] == category).toList();
  }

  // Helper methods
  void _setLoading(bool loading) {
    _isLoading = loading;
    notifyListeners();
  }

  void _setError(String error) {
    _errorMessage = error;
    notifyListeners();
  }

  void _clearError() {
    _errorMessage = null;
    notifyListeners();
  }
}
