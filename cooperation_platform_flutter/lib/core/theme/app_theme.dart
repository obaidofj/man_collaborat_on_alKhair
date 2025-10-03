import 'package:flutter/material.dart';

class AppTheme {
  // الألوان الأساسية
  static const Color primaryColor = Color(0xFF2563EB); // أزرق
  static const Color secondaryColor = Color(0xFF10B981); // أخضر
  static const Color accentColor = Color(0xFFF59E0B); // برتقالي
  static const Color errorColor = Color(0xFFEF4444); // أحمر
  static const Color warningColor = Color(0xFFF59E0B); // برتقالي
  static const Color successColor = Color(0xFF10B981); // أخضر
  static const Color infoColor = Color(0xFF3B82F6); // أزرق فاتح

  // الألوان الرمادية
  static const Color grey50 = Color(0xFFF9FAFB);
  static const Color grey100 = Color(0xFFF3F4F6);
  static const Color grey200 = Color(0xFFE5E7EB);
  static const Color grey300 = Color(0xFFD1D5DB);
  static const Color grey400 = Color(0xFF9CA3AF);
  static const Color grey500 = Color(0xFF6B7280);
  static const Color grey600 = Color(0xFF4B5563);
  static const Color grey700 = Color(0xFF374151);
  static const Color grey800 = Color(0xFF1F2937);
  static const Color grey900 = Color(0xFF111827);

  // ثيم فاتح
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    primarySwatch: MaterialColor(
      primaryColor.value,
      <int, Color>{
        50: const Color(0xFFEFF6FF),
        100: const Color(0xFFDBEAFE),
        200: const Color(0xFFBFDBFE),
        300: const Color(0xFF93C5FD),
        400: const Color(0xFF60A5FA),
        500: primaryColor,
        600: const Color(0xFF2563EB),
        700: const Color(0xFF1D4ED8),
        800: const Color(0xFF1E40AF),
        900: const Color(0xFF1E3A8A),
      },
    ),
    colorScheme: const ColorScheme.light(
      primary: primaryColor,
      secondary: secondaryColor,
      surface: Colors.white,
      background: grey50,
      error: errorColor,
      onPrimary: Colors.white,
      onSecondary: Colors.white,
      onSurface: grey900,
      onBackground: grey900,
      onError: Colors.white,
    ),
    
    // خط النص
    fontFamily: 'Cairo',
    textTheme: const TextTheme(
      displayLarge: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.bold,
        color: grey900,
        fontFamily: 'Cairo',
      ),
      displayMedium: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.bold,
        color: grey900,
        fontFamily: 'Cairo',
      ),
      displaySmall: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: grey900,
        fontFamily: 'Cairo',
      ),
      headlineLarge: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.w600,
        color: grey900,
        fontFamily: 'Cairo',
      ),
      headlineMedium: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: grey900,
        fontFamily: 'Cairo',
      ),
      headlineSmall: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: grey900,
        fontFamily: 'Cairo',
      ),
      titleLarge: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: grey900,
        fontFamily: 'Cairo',
      ),
      titleMedium: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: grey900,
        fontFamily: 'Cairo',
      ),
      titleSmall: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        color: grey700,
        fontFamily: 'Cairo',
      ),
      bodyLarge: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.normal,
        color: grey800,
        fontFamily: 'Cairo',
      ),
      bodyMedium: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.normal,
        color: grey700,
        fontFamily: 'Cairo',
      ),
      bodySmall: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.normal,
        color: grey600,
        fontFamily: 'Cairo',
      ),
      labelLarge: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: grey900,
        fontFamily: 'Cairo',
      ),
      labelMedium: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        color: grey700,
        fontFamily: 'Cairo',
      ),
      labelSmall: TextStyle(
        fontSize: 10,
        fontWeight: FontWeight.w500,
        color: grey600,
        fontFamily: 'Cairo',
      ),
    ),

    // شريط التطبيق
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      foregroundColor: grey900,
      elevation: 0,
      centerTitle: true,
      titleTextStyle: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: grey900,
        fontFamily: 'Cairo',
      ),
    ),

    // الأزرار
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: primaryColor,
        foregroundColor: Colors.white,
        elevation: 2,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        textStyle: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w600,
          fontFamily: 'Cairo',
        ),
      ),
    ),

    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: primaryColor,
        side: const BorderSide(color: primaryColor),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        textStyle: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w600,
          fontFamily: 'Cairo',
        ),
      ),
    ),

    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: primaryColor,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        textStyle: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w600,
          fontFamily: 'Cairo',
        ),
      ),
    ),

    // حقول الإدخال
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: grey50,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: grey300),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: grey300),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: primaryColor, width: 2),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: errorColor),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: errorColor, width: 2),
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      labelStyle: const TextStyle(
        color: grey600,
        fontFamily: 'Cairo',
      ),
      hintStyle: const TextStyle(
        color: grey400,
        fontFamily: 'Cairo',
      ),
    ),

    // البطاقات
    cardTheme: CardTheme(
      color: Colors.white,
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      margin: const EdgeInsets.all(8),
    ),

    // شريط التنقل السفلي
    bottomNavigationBarTheme: const BottomNavigationBarTheme(
      backgroundColor: Colors.white,
      selectedItemColor: primaryColor,
      unselectedItemColor: grey400,
      type: BottomNavigationBarType.fixed,
      elevation: 8,
      selectedLabelStyle: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w600,
        fontFamily: 'Cairo',
      ),
      unselectedLabelStyle: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.normal,
        fontFamily: 'Cairo',
      ),
    ),

    // الأيقونات
    iconTheme: const IconThemeData(
      color: grey600,
      size: 24,
    ),

    // الفواصل
    dividerTheme: const DividerThemeData(
      color: grey200,
      thickness: 1,
      space: 1,
    ),
  );

  // ثيم داكن
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    primarySwatch: MaterialColor(
      primaryColor.value,
      <int, Color>{
        50: const Color(0xFFEFF6FF),
        100: const Color(0xFFDBEAFE),
        200: const Color(0xFFBFDBFE),
        300: const Color(0xFF93C5FD),
        400: const Color(0xFF60A5FA),
        500: primaryColor,
        600: const Color(0xFF2563EB),
        700: const Color(0xFF1D4ED8),
        800: const Color(0xFF1E40AF),
        900: const Color(0xFF1E3A8A),
      },
    ),
    colorScheme: const ColorScheme.dark(
      primary: primaryColor,
      secondary: secondaryColor,
      surface: grey800,
      background: grey900,
      error: errorColor,
      onPrimary: Colors.white,
      onSecondary: Colors.white,
      onSurface: grey100,
      onBackground: grey100,
      onError: Colors.white,
    ),
    
    fontFamily: 'Cairo',
    // يمكن إضافة المزيد من تخصيصات الثيم الداكن هنا
  );

  // الألوان المخصصة للتطبيق
  static const Map<String, Color> customColors = {
    'donation': Color(0xFF10B981), // أخضر للتبرعات
    'volunteer': Color(0xFF8B5CF6), // بنفسجي للتطوع
    'project': Color(0xFF06B6D4), // سماوي للمشاريع
    'event': Color(0xFFF59E0B), // برتقالي للأحداث
    'organization': Color(0xFFEF4444), // أحمر للمنظمات
    'beneficiary': Color(0xFF84CC16), // أخضر فاتح للمستفيدين
  };

  // الحصول على لون حسب نوع المستخدم
  static Color getUserTypeColor(String userType) {
    switch (userType.toLowerCase()) {
      case 'donor':
      case 'متبرع':
        return customColors['donation']!;
      case 'volunteer':
      case 'متطوع':
        return customColors['volunteer']!;
      case 'organization':
      case 'منظمة':
        return customColors['organization']!;
      case 'beneficiary':
      case 'مستفيد':
        return customColors['beneficiary']!;
      default:
        return primaryColor;
    }
  }

  // الحصول على لون حسب نوع النشاط
  static Color getActivityTypeColor(String activityType) {
    switch (activityType.toLowerCase()) {
      case 'donation':
      case 'تبرع':
        return customColors['donation']!;
      case 'volunteer':
      case 'تطوع':
        return customColors['volunteer']!;
      case 'project':
      case 'مشروع':
        return customColors['project']!;
      case 'event':
      case 'حدث':
        return customColors['event']!;
      default:
        return primaryColor;
    }
  }
}
