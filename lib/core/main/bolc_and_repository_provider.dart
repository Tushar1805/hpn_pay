import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/repositories/auth_repository.dart';
import '../../logic/cubit/Internet/internet_cubit.dart';
import '../../logic/cubit/navigation/navigation_cubit.dart';
import 'app.dart';


class BlocAndRepositoryProvider extends StatelessWidget {
  const BlocAndRepositoryProvider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (context) => NavigationCubit(),
        ),

        // RepositoryProvider(
        //   create: (context) => UserHybrateStorageCubit(),
        // ),
        RepositoryProvider(
          create: (context) => AuthRepository(),
        ),
        // RepositoryProvider(
        //   create: (context) => TokenHydratedStorageCubit(),
        // ),
        // RepositoryProvider(
        //   create: (context) => AddUserRepository(),
        // ),

      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => InternetCubit(),
          ),
          // BlocProvider(
          //   create: (context) => UserHybrateStorageCubit(),
          // ),
          BlocProvider(
            create: (context) => NavigationCubit(),
          ),
          // BlocProvider(
          //   create: (context) => ImageHydrateStorageCubit(),
          // ),
        ],
        child: App(),
      ),
    );
  }
}
