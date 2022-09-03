import 'package:datespin/pages/home.dart';
import 'package:datespin/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(
    ProviderScope(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: pinkPrimary,
        ),
        color: Colors.pink,
        home: const DateSpin(),
      ),
    ),
  );
}
