import 'package:flutter/material.dart';
import 'package:music_app/screen/list/view/list_screen.dart';
import 'package:music_app/screen/music/view/music_screen.dart';

Map<String,WidgetBuilder> app_routes={
  '/':(context) => const ListScreen(),
  'music':(context) => const MusicScreen(),
};