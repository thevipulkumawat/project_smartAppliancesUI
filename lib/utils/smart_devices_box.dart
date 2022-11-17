import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SmartDeviceBox extends StatelessWidget {
  final String smartDevicesName;
  final String iconPath;
  final bool powerOn;
  void Function(bool)? onChanged;

  SmartDeviceBox(
      {Key? key,
      required this.smartDevicesName,
      required this.iconPath,
      required this.powerOn,
      required this.onChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        decoration: BoxDecoration(
          color: powerOn ? Colors.grey[200] : Colors.grey[900],
          borderRadius: BorderRadius.circular(24),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //icon
              Image.asset(
                iconPath,
                height: 65,
                color: powerOn ? Colors.black : Colors.white,
              ),
              // DEVICE NAME
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 25.0),
                      child: Text(
                        smartDevicesName,
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: powerOn ? Colors.black : Colors.white),
                      ),
                    ),
                  ),
                  Transform.rotate(
                    angle: pi / 2,
                    child:
                        CupertinoSwitch(value: powerOn, onChanged: onChanged),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
