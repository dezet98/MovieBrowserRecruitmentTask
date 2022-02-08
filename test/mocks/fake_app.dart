import 'package:flutter/material.dart';
import 'package:flutter_recruitment_task/generated/l10n.dart';

class FakeApp extends StatelessWidget {
  final Widget child;

  const FakeApp({required this.child, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: const MediaQueryData(),
      child: MaterialApp(
        localizationsDelegates: const [S.delegate],
        home: child,
      ),
    );
  }
}
