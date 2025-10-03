import 'package:flutter/foundation.dart';

class AuthProvider extends ChangeNotifier {
  bool _isAuthenticated = false;
  bool _isLoading = false;
  String? _userToken;
  Map<String, dynamic>? _userData;
  String? _errorMessage;

  // Getters
  bool get isAuthenticated => _isAuthenticated;
  bool get isLoading => _isLoading;
  String? get userToken => _userToken;
  Map<String, dynamic>? get userData => _userData;
  String? get errorMessage => _errorMessage;

  // تسجيل الدخول
  Future<bool> login(String email, String password) async {
    _setLoading(true);
    _clearError();

    try {
      // محاكاة استدعاء API
      await Future.delayed(const Duration(seconds: 2));
      
      // محاكاة نجاح تسجيل الدخول
      if (email.isNotEmpty && password.isNotEmpty) {
        _userToken = 'mock_token_${DateTime.now().millisecondsSinceEpoch}';
        _userData = {
          'id': '1',
          'name': 'المستخدم التجريبي',
          'email': email,
          'userType': 'donor',
          'avatar': null,
        };
        _isAuthenticated = true;
        _setLoading(false);
        return true;
      } else {
        _setError('البريد الإلكتروني وكلمة المرور مطلوبان');
        _setLoading(false);
        return false;
      }
    } catch (e) {
      _setError('حدث خطأ أثناء تسجيل الدخول');
      _setLoading(false);
      return false;
    }
  }

  // تسجيل حساب جديد
  Future<bool> register({
    required String firstName,
    required String lastName,
    required String email,
    required String password,
    required String userType,
    String? phone,
  }) async {
    _setLoading(true);
    _clearError();

    try {
      // محاكاة استدعاء API
      await Future.delayed(const Duration(seconds: 2));
      
      // محاكاة نجاح التسجيل
      _userToken = 'mock_token_${DateTime.now().millisecondsSinceEpoch}';
      _userData = {
        'id': '1',
        'name': '$firstName $lastName',
        'email': email,
        'userType': userType,
        'phone': phone,
        'avatar': null,
      };
      _isAuthenticated = true;
      _setLoading(false);
      return true;
    } catch (e) {
      _setError('حدث خطأ أثناء إنشاء الحساب');
      _setLoading(false);
      return false;
    }
  }

  // تسجيل الخروج
  Future<void> logout() async {
    _setLoading(true);
    
    try {
      // محاكاة استدعاء API
      await Future.delayed(const Duration(seconds: 1));
      
      _userToken = null;
      _userData = null;
      _isAuthenticated = false;
      _clearError();
    } catch (e) {
      _setError('حدث خطأ أثناء تسجيل الخروج');
    } finally {
      _setLoading(false);
    }
  }

  // التحقق من حالة المصادقة
  Future<void> checkAuthStatus() async {
    _setLoading(true);
    
    try {
      // محاكاة التحقق من التوكن المحفوظ
      await Future.delayed(const Duration(seconds: 1));
      
      // هنا يمكن التحقق من SharedPreferences أو التخزين المحلي
      // للآن سنعتبر المستخدم غير مسجل دخول
      _isAuthenticated = false;
    } catch (e) {
      _setError('حدث خطأ أثناء التحقق من حالة المصادقة');
    } finally {
      _setLoading(false);
    }
  }

  // إعادة تعيين كلمة المرور
  Future<bool> resetPassword(String email) async {
    _setLoading(true);
    _clearError();

    try {
      // محاكاة استدعاء API
      await Future.delayed(const Duration(seconds: 2));
      
      _setLoading(false);
      return true;
    } catch (e) {
      _setError('حدث خطأ أثناء إرسال رابط إعادة تعيين كلمة المرور');
      _setLoading(false);
      return false;
    }
  }

  // تحديث بيانات المستخدم
  Future<bool> updateProfile(Map<String, dynamic> profileData) async {
    _setLoading(true);
    _clearError();

    try {
      // محاكاة استدعاء API
      await Future.delayed(const Duration(seconds: 2));
      
      // تحديث البيانات المحلية
      _userData = {..._userData!, ...profileData};
      _setLoading(false);
      return true;
    } catch (e) {
      _setError('حدث خطأ أثناء تحديث البيانات');
      _setLoading(false);
      return false;
    }
  }

  // تغيير كلمة المرور
  Future<bool> changePassword({
    required String currentPassword,
    required String newPassword,
  }) async {
    _setLoading(true);
    _clearError();

    try {
      // محاكاة استدعاء API
      await Future.delayed(const Duration(seconds: 2));
      
      _setLoading(false);
      return true;
    } catch (e) {
      _setError('حدث خطأ أثناء تغيير كلمة المرور');
      _setLoading(false);
      return false;
    }
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

  // تنظيف البيانات
  void dispose() {
    super.dispose();
  }
}
