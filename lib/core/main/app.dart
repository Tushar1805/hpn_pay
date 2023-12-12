import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../presentation/routers/app_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:responsive_framework/responsive_framework.dart';
import '../../logic/debug/app_bloc_observer.dart';
import '../../presentation/routers/app_router.dart';
import '../constants/constant_text.dart';
import '../themes/app_theme.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
  //   accessToken = context.read<TokenHydratedStorageCubit>().state.toString();
  //   print("accessToken $accessToken");
  // var isLoggedIn = context.read<UserHybrateStorageCubit>().state != null;
    return kReleaseMode
        ? _releaseWidget(context,
        // isLoggedIn
    )
        : _debugWidget(context,
      // isLoggedIn
    );
  }
}

// /// release mode material app.
_releaseWidget(BuildContext context,
   // bool isLogedIn
    ) => MaterialApp(
      title: "Rainbow Coins",
      theme: appLightTheme(context),
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      navigatorKey: AppRouter.navigatorKey,
      initialRoute:
      // AppRouter.intro,
      //     isLogedIn ? AppRouter.navigationScreen :
          AppRouter.intro,
      onGenerateRoute: AppRouter.onGenerateRoute,
      builder: (context, child) {
        var responsiveChild = _responsiveWrapperWidget(context, child!);
        return EasyLoading.init()(context, responsiveChild);
      },
    );
//
// /// debug mode material app.
_debugWidget(BuildContext context,
    // bool isLogedIn
    ) => BlocOverrides.runZoned(
    () => DevicePreview(
          enabled: false,
          builder: (context) => MaterialApp(
            title: "Rainbow Coins",
            useInheritedMediaQuery: true,
            theme: appLightTheme(context),
            themeMode: ThemeMode.light,
            debugShowCheckedModeBanner: false,
            navigatorKey: AppRouter.navigatorKey,
            initialRoute:
            AppRouter.intro,

            // isLogedIn ? AppRouter.navigationScreen : AppRouter.intro,
            onGenerateRoute: AppRouter.onGenerateRoute,
            builder: (context, child) {
              var responsiveChild = _responsiveWrapperWidget(context, child!);
              var dchild = DevicePreview.appBuilder(context, responsiveChild);
              return EasyLoading.init()(context, dchild);
            },
          ), // Wrap your app
        ),
    blocObserver: AppBlocObserver());

/// used to make responsive. set breakpoint here.
_responsiveWrapperWidget(BuildContext context, Widget child) =>
    ResponsiveWrapper.builder(
      ClampingScrollWrapper.builder(context, child),
      breakpoints: [
        ResponsiveBreakpoint.resize(320, name: MOBILE),
        ResponsiveBreakpoint.autoScale(450, name: TABLET),
      ],
    );
