import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_recruitment_task/generated/l10n.dart';
import 'package:flutter_recruitment_task/shared/router.dart';

class MovieApp extends StatelessWidget {
  const MovieApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Movie Browser',
        theme: ThemeData(primarySwatch: Colors.amber),
        initialRoute: AppRouter.initialRoute,
        onGenerateRoute: AppRouter.onGenerateRoute,
        localizationsDelegates: const [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: S.delegate.supportedLocales,
      );
}
