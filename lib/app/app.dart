import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:routemaster/routemaster.dart';

import 'ui/navigation/routes.dart';
import 'ui/theme/app_theme.dart';

final routemaster = RoutemasterDelegate(
  routesBuilder: (context) {
    final appState = context.watch<AppState>();
    return appState.isLoggedIn ? loggedInMap : loggedOutMap;
  },
);

class AppState extends ChangeNotifier {
  bool _isLoggedIn = false;

  bool get isLoggedIn => _isLoggedIn;

  void changeLogInState(bool value) {
    _isLoggedIn = value;
    notifyListeners();
  }
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AppState(),
      child: ScreenUtilInit(
        designSize: const Size(375, 845),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) => MaterialApp.router(
          routerDelegate: routemaster,
          routeInformationParser: const RoutemasterParser(),
          debugShowCheckedModeBanner: false,
          theme: AppTheme.appTheme,
        ),
      ),
    );
  }
}
