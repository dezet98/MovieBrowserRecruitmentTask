import 'package:flutter/material.dart';
import 'package:flutter_recruitment_task/shared/router.dart';

class MovieApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Movie Browser',
        theme: ThemeData(primarySwatch: Colors.amber),
        initialRoute: AppRouter.initialRoute,
        onGenerateRoute: AppRouter.onGenerateRoute,
      );
}
