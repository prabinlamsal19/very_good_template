import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:vg_flutter_template/app/cubit/app_bloc.dart';
import 'package:vg_flutter_template/app/cubit/app_event.dart';
import 'package:vg_flutter_template/app/cubit/app_state.dart';
import 'package:vg_flutter_template/features/authentication/presentation/pages/login_page.dart';
import 'package:vg_flutter_template/home/presentation/pages/homepage.dart';
import 'package:vg_flutter_template/l10n/l10n.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  void dispose() {
    Hive.close();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppBloc(),
      child: MaterialApp(
        theme: ThemeData(
          appBarTheme: const AppBarTheme(color: Color(0xFF13B9FF)),
          colorScheme: ColorScheme.fromSwatch(
            accentColor: const Color(0xFF13B9FF),
          ),
        ),
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        home: BlocBuilder<AppBloc, AppState>(
          builder: (context, state) {
            return state.when(
              initial: () {
                BlocProvider.of<AppBloc>(context).add(CheckStoredLoginEvnet());
                return const Scaffold(body: CircularProgressIndicator());
              },
              loggedIn: (userModel) => HomePage(userModel),
              loggedOut: () => const LoginPage(),
            );
          },
        ),
      ),
    );
  }
}
