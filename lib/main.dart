import 'package:flutter/material.dart';
import 'package:resume/resume_app.dart';
import 'package:resume/theme.dart';
import 'package:provider/provider.dart';
import 'package:resume/theme_notifier.dart';
import 'package:flutter_web_plugins/url_strategy.dart';

void main() {
  usePathUrlStrategy();
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeNotifier(
        ThemeMode.system == ThemeMode.dark
          ? Brightness.dark
          : Brightness.light
      ),
      builder: (context, _) {
        final brightness = Provider.of<ThemeNotifier>(context).themeMode;
        return MaterialApp(
          title: 'Resume',
          debugShowCheckedModeBanner: false,
          theme: getTheme(brightness: brightness),
          builder: (context, child) => ScrollConfiguration(
            behavior: BouncingScrollBehavior(),
            child: child!
          ),
          home: ResumeApp()
        );
      }
    )
  );
}
