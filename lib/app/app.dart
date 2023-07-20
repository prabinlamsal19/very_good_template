import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vg_flutter_template/app/cubit/app_cubit.dart';
import 'package:vg_flutter_template/features/authentication/presentation/pages/login_page.dart';
import 'package:vg_flutter_template/home/presentation/pages/homepage.dart';
import 'package:vg_flutter_template/l10n/l10n.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppCubit(),
      child: MaterialApp(
        theme: ThemeData(
          appBarTheme: const AppBarTheme(color: Color(0xFF13B9FF)),
          colorScheme: ColorScheme.fromSwatch(
            accentColor: const Color(0xFF13B9FF),
          ),
        ),
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        home: BlocBuilder<AppCubit, AppState>(
          builder: (context, state) {
            return state.when(
              initial: () => const LoginPage(),
              loggedIn: () => const HomePage(),
              loggedOut: () => const LoginPage(),
            );
          },
        ),
      ),
    );
  }
}
