import 'package:flutter/material.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';
import 'package:find_your_fits_mobile/screens/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider(
        create: (_) {
      CookieRequest request = CookieRequest();
      return request;
    },
    child: MaterialApp(
        title: 'Find Your Fits',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch(
            primarySwatch: Colors.blue,
          ).copyWith(secondary: Colors.blue[400]),
          useMaterial3: true,
        ),
        home: LoginPage(),
      )
    );
  }
}
