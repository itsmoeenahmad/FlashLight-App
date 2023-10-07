//FlashLight App Main File

import 'package:flutter/material.dart';
import 'package:torch_controller/torch_controller.dart';
import 'package:lottie/lottie.dart';

class FLashLight extends StatefulWidget {
  const FLashLight({super.key});

  @override
  State<FLashLight> createState() => _FLashLightState();
}

class _FLashLightState extends State<FLashLight> {
  var controller = TorchController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: const Text(
          "FLlash Light App",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: InkWell(
                onTap: () {
                  controller.toggle();
                  setState(() {});
                },
                child: const CircleAvatar(
                  maxRadius: 70,
                  minRadius: 40,
                  foregroundColor: Colors.black,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.power_settings_new_sharp,
                    size: 60,
                  ),
                ),
              ),
            ),
          ],
        ),
        Lottie.network(
          "https://lottie.host/1ddb4021-1c9d-4798-96e8-97045cebc98b/pLfAfBwyym.json",
        ),
      ]),
    );
  }
}
