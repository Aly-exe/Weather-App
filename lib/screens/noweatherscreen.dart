import 'package:flutter/material.dart';

Widget NoWaetherData() {
  return Padding(
    padding: const EdgeInsets.all(35.0),
    child: const Center(
      child: Text(
        "No Weather Data to show 😔 please search to get data  🔍",
        style: TextStyle(fontSize: 22.0, height: 1.5),
      ),
    ),
  );
}
