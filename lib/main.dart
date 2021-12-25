import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:web_profile/commons/routes.dart';
import 'package:web_profile/commons/styles.dart';
import 'package:web_profile/providers/app_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<AppProvider>(
      create: (context) => AppProvider(),
      builder: (context, _) => ScreenUtilInit(
        designSize: const Size(360, 640),
        minTextAdapt: true,
        builder: () => LayoutBuilder(
          builder: (context, constraints) => Consumer<AppProvider>(
            builder: (context, appState, _) => MaterialApp(
              onGenerateRoute: Routes.onGenerateRoute,
              themeMode: appState.themeMode,
              theme: ThemeData(
                primaryColor: const Color(0xFFF9B301),
                primaryColorDark: Colors.black26,
                backgroundColor: Colors.white70,
                textTheme: Styles.lightTextTheme,
                elevatedButtonTheme: ElevatedButtonThemeData(
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xFFF9B301),
                    padding: EdgeInsets.fromLTRB(16.r, 12.r, 16.r, 12.r),
                  ),
                ),
                floatingActionButtonTheme: const FloatingActionButtonThemeData(
                  backgroundColor: Color(0xFFF9B301),
                ),
              ),
              darkTheme: ThemeData(
                primaryColor: const Color(0xFFF9B301),
                primaryColorDark: Colors.white24,
                backgroundColor: Colors.black87,
                textTheme: Styles.darkTextTheme,
                elevatedButtonTheme: ElevatedButtonThemeData(
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xFFF9B301),
                    padding: EdgeInsets.fromLTRB(16.r, 12.r, 16.r, 12.r),
                  ),
                ),
                floatingActionButtonTheme: const FloatingActionButtonThemeData(
                  backgroundColor: Color(0xFFF9B301),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
