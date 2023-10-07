//FLASHLIGHT-APP
//FIRST PROJECT

import 'package:flutter/material.dart';
import 'package:torch_controller/torch_controller.dart';
import 'flashlight.dart';

void main() {
  TorchController().initialize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "FlashLight_App",
      debugShowCheckedModeBanner: false,
      home: FLashLight(),
    );
  }
}
