import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'editor_page.dart';
import 'editor_controller.dart';
import 'help_controller.dart';

void main() {
  Get.put(EditorController());
  Get.put(HelpController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: EditorPage(),
    );
  }
}
