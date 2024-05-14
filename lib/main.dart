import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:music_app/provider/music_provider.dart';
import 'package:music_app/routes.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider.value(value: MusicProvider()),
    ],
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: app_routes,
    ),
  ));
}
