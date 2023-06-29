import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  // configureDependencies();
  // getIt.registerSingleton<AppRouter>(AppRouter());

  // await AppDatabase().initialize();

  runApp(
    EasyLocalization(
      path: 'assets/translations',
      supportedLocales: const [Locale('en')],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  // final AppRouter appRouter;

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      // routerDelegate: widget.appRouter.delegate(),
      // routeInformationParser: widget.appRouter.defaultRouteParser(),
      title: "",
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
        floatingActionButtonTheme:
            const FloatingActionButtonThemeData(backgroundColor: Colors.yellow),
      ),
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
    );
  }
}
