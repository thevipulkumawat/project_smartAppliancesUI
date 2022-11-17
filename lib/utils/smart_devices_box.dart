import 'package:flutter/material.dart';

class SmartDeviceBox extends StatelessWidget {
  final String smartDevicesName;
  final String iconPath;
  final bool powerOn;

  const SmartDeviceBox(
      {Key? key,
      required this.smartDevicesName,
      required this.iconPath,
      required this.powerOn})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          //icon
          Image.asset(iconPath),
        ],
      ),
    );
  }
}
