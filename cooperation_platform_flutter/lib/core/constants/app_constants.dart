class AppConstants {
  // معلومات التطبيق
  static const String appName = 'منصة التعاون على الخير';
  static const String appVersion = '1.0.0';
  static const String appDescription = 'منصة شاملة للعمل الخيري والتطوعي';

  // URLs
  static const String baseUrl = 'https://api.cooperation-platform.com';
  static const String websiteUrl = 'https://cooperation-platform.com';
  static const String supportEmail = 'support@cooperation-platform.com';
  static const String privacyPolicyUrl = '$websiteUrl/privacy';
  static const String termsOfServiceUrl = '$websiteUrl/terms';

  // API Endpoints
  static const String authEndpoint = '/auth';
  static const String campaignsEndpoint = '/campaigns';
  static const String volunteersEndpoint = '/volunteers';
  static const String projectsEndpoint = '/projects';
  static const String eventsEndpoint = '/events';
  static const String notificationsEndpoint = '/notifications';
  static const String messagesEndpoint = '/messages';
  static const String usersEndpoint = '/users';
  static const String donationsEndpoint = '/donations';

  // أنواع المستخدمين
  static const List<String> userTypes = [
    'donor',
    'volunteer',
    'organization',
    'beneficiary',
    'admin',
    'super_admin',
  ];

  static const Map<String, String> userTypeLabels = {
    'donor': 'متبرع',
    'volunteer': 'متطوع',
    'organization': 'منظمة خيرية',
    'beneficiary': 'مستفيد',
    'admin': 'مسؤول',
    'super_admin': 'مسؤول أعلى',
  };

  // فئات الحملات
  static const List<String> campaignCategories = [
    'relief',
    'education',
    'health',
    'environment',
    'social',
    'emergency',
    'infrastructure',
    'technology',
  ];

  static const Map<String, String> campaignCategoryLabels = {
    'relief': 'إغاثة',
    'education': 'تعليم',
    'health': 'صحة',
    'environment': 'بيئة',
    'social': 'اجتماعي',
    'emergency': 'طوارئ',
    'infrastructure': 'بنية تحتية',
    'technology': 'تكنولوجيا',
  };

  // فئات التطوع
  static const List<String> volunteerCategories = [
    'teaching',
    'medical',
    'social_work',
    'environmental',
    'technical',
    'administrative',
    'field_work',
    'research',
  ];

  static const Map<String, String> volunteerCategoryLabels = {
    'teaching': 'تعليم',
    'medical': 'طبي',
    'social_work': 'عمل اجتماعي',
    'environmental': 'بيئي',
    'technical': 'تقني',
    'administrative': 'إداري',
    'field_work': 'عمل ميداني',
    'research': 'بحث',
  };

  // حالات الحملات
  static const List<String> campaignStatuses = [
    'draft',
    'pending',
    'active',
    'paused',
    'completed',
    'cancelled',
  ];

  static const Map<String, String> campaignStatusLabels = {
    'draft': 'مسودة',
    'pending': 'في انتظار الموافقة',
    'active': 'نشطة',
    'paused': 'متوقفة مؤقتاً',
    'completed': 'مكتملة',
    'cancelled': 'ملغية',
  };

  // حالات التطوع
  static const List<String> volunteerStatuses = [
    'open',
    'in_progress',
    'completed',
    'cancelled',
  ];

  static const Map<String, String> volunteerStatusLabels = {
    'open': 'مفتوحة',
    'in_progress': 'قيد التنفيذ',
    'completed': 'مكتملة',
    'cancelled': 'ملغية',
  };

  // طرق الدفع
  static const List<String> paymentMethods = [
    'credit_card',
    'debit_card',
    'bank_transfer',
    'digital_wallet',
    'cash',
  ];

  static const Map<String, String> paymentMethodLabels = {
    'credit_card': 'بطاقة ائتمان',
    'debit_card': 'بطاقة خصم',
    'bank_transfer': 'تحويل بنكي',
    'digital_wallet': 'محفظة رقمية',
    'cash': 'نقداً',
  };

  // أولويات الإشعارات
  static const List<String> notificationPriorities = [
    'low',
    'medium',
    'high',
    'urgent',
  ];

  static const Map<String, String> notificationPriorityLabels = {
    'low': 'منخفضة',
    'medium': 'متوسطة',
    'high': 'عالية',
    'urgent': 'عاجلة',
  };

  // أنواع الإشعارات
  static const List<String> notificationTypes = [
    'donation',
    'volunteer',
    'campaign',
    'project',
    'event',
    'message',
    'system',
    'reminder',
  ];

  static const Map<String, String> notificationTypeLabels = {
    'donation': 'تبرع',
    'volunteer': 'تطوع',
    'campaign': 'حملة',
    'project': 'مشروع',
    'event': 'حدث',
    'message': 'رسالة',
    'system': 'نظام',
    'reminder': 'تذكير',
  };

  // الحد الأقصى لحجم الملفات (بالبايت)
  static const int maxFileSize = 10 * 1024 * 1024; // 10 MB
  static const int maxImageSize = 5 * 1024 * 1024; // 5 MB

  // أنواع الملفات المدعومة
  static const List<String> supportedImageTypes = [
    'jpg',
    'jpeg',
    'png',
    'gif',
    'webp',
  ];

  static const List<String> supportedDocumentTypes = [
    'pdf',
    'doc',
    'docx',
    'xls',
    'xlsx',
    'ppt',
    'pptx',
    'txt',
  ];

  // إعدادات التطبيق الافتراضية
  static const int defaultPageSize = 20;
  static const int maxRetryAttempts = 3;
  static const Duration requestTimeout = Duration(seconds: 30);
  static const Duration cacheExpiration = Duration(hours: 1);

  // مفاتيح التخزين المحلي
  static const String userTokenKey = 'user_token';
  static const String userDataKey = 'user_data';
  static const String languageKey = 'language';
  static const String themeKey = 'theme';
  static const String notificationSettingsKey = 'notification_settings';
  static const String onboardingCompletedKey = 'onboarding_completed';

  // الرسائل الافتراضية
  static const String networkErrorMessage = 'خطأ في الاتصال بالشبكة';
  static const String serverErrorMessage = 'خطأ في الخادم';
  static const String unknownErrorMessage = 'حدث خطأ غير متوقع';
  static const String noDataMessage = 'لا توجد بيانات';
  static const String loadingMessage = 'جاري التحميل...';

  // التعبيرات النمطية للتحقق من صحة البيانات
  static const String emailRegex = r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$';
  static const String phoneRegex = r'^[+]?[0-9]{10,15}$';
  static const String passwordRegex = r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d@$!%*?&]{8,}$';

  // الحد الأدنى والأقصى للقيم
  static const int minPasswordLength = 8;
  static const int maxPasswordLength = 128;
  static const int minUsernameLength = 3;
  static const int maxUsernameLength = 50;
  static const double minDonationAmount = 1.0;
  static const double maxDonationAmount = 1000000.0;

  // إعدادات الخريطة
  static const double defaultLatitude = 24.7136;
  static const double defaultLongitude = 46.6753;
  static const double defaultZoom = 10.0;

  // إعدادات الكاميرا والصور
  static const int imageQuality = 80;
  static const double maxImageWidth = 1920;
  static const double maxImageHeight = 1080;

  // إعدادات الإشعارات المحلية
  static const String notificationChannelId = 'cooperation_platform_notifications';
  static const String notificationChannelName = 'إشعارات منصة التعاون على الخير';
  static const String notificationChannelDescription = 'إشعارات التطبيق الرئيسية';

  // روابط وسائل التواصل الاجتماعي
  static const String facebookUrl = 'https://facebook.com/cooperation-platform';
  static const String twitterUrl = 'https://twitter.com/cooperation_platform';
  static const String instagramUrl = 'https://instagram.com/cooperation_platform';
  static const String linkedinUrl = 'https://linkedin.com/company/cooperation-platform';
  static const String youtubeUrl = 'https://youtube.com/c/cooperation-platform';

  // معرفات Firebase
  static const String firebaseProjectId = 'cooperation-platform';
  static const String firebaseApiKey = 'your-firebase-api-key';
  static const String firebaseAppId = 'your-firebase-app-id';

  // معرفات Google
  static const String googleClientId = 'your-google-client-id';
  static const String googleServerClientId = 'your-google-server-client-id';

  // معرفات Facebook
  static const String facebookAppId = 'your-facebook-app-id';
  static const String facebookClientToken = 'your-facebook-client-token';
}
