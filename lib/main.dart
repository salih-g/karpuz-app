import 'package:flutter/material.dart';
import 'package:karpuz/utils/colors.dart';
import 'package:karpuz/utils/route_generator.dart';

void main() {
  runApp(MaterialApp(
    title: 'Karpuz',
    theme: ThemeData.dark().copyWith(
      scaffoldBackgroundColor: backgroundColor,
    ),
    initialRoute: '/',
    debugShowCheckedModeBanner: false,
    onGenerateRoute: RouteGenerator.generateRoute,
  ));
}
