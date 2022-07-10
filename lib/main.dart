import 'package:ewallet_slicing_ui/pages/main_page.dart';
import 'package:ewallet_slicing_ui/pages/provider/page_provider.dart';
import 'package:ewallet_slicing_ui/pages/wallet_page.dart';
import 'package:ewallet_slicing_ui/pages/provider/theme_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => ThemeService(),
          ),
          ChangeNotifierProvider(
            create: (context) => PageProvider(),
          ),
        ],
        child: Builder(
          builder: (context) {
            final themeService = Provider.of<ThemeService>(context);
            return MaterialApp(
              theme: ThemeData(
                  colorScheme: ColorScheme.fromSeed(
                      brightness: themeService.darkTheme
                          ? Brightness.dark
                          : Brightness.light,
                      seedColor: Colors.indigo)),
              home: const MainPage(),
            );
          },
        ));
  }
}
