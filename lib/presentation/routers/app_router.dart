import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hpn_pay/data/repositories/auth_repository.dart';
import 'package:hpn_pay/logic/cubit/Internet/internet_cubit.dart';
import 'package:hpn_pay/logic/cubit/login_cubit/login_cubit.dart';
import 'package:hpn_pay/logic/cubit/otp_cubit/otp_cubit.dart';
import '../screens/intro_screen/intro_screen.dart';
import '../screens/otp_screen/otp_screen.dart';

class AppRouter {
  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();
  static const String intro = "introScreen";
  static const String otpScreen = "/otpScreen";

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case intro:
        return _intro();
      case otpScreen:
        return _otpScreen(settings);

      default:
        throw Exception("Route was not Found");
    }
  }

  static _intro() {
    return MaterialPageRoute(
        builder: (context) => BlocProvider(
              create: (context) => LoginCubit(context.read<AuthRepository>(),
                  context.read<InternetCubit>()),
              child: IntroScreen(),
            ));
  }

  static _otpScreen(RouteSettings settings) {
    return MaterialPageRoute(
      settings: settings,
      builder: (context) => BlocProvider(
        create: (context) => OtpCubit(
            context.read<AuthRepository>(), context.read<InternetCubit>()),
        child: const OtpScreen(),
      ),
    );
  }
}
