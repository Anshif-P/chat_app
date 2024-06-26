import 'package:chat_app_ayan_machine_task/view/screen_login.dart';
import 'package:chat_app_ayan_machine_task/view/screen_users.dart';
import 'package:flutter/material.dart';

import 'view/screen_chat.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ScreenChat(),
    );
  }
}
