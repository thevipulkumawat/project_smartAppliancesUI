import 'package:flutter/material.dart';
import 'package:project_smarthomeui/utils/smart_devices_box.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // padding constants
  final double horizontalPadding = 40.0;
  final double verticalPadding = 25.0;
  // LIST OF SMART DEVICES
  List mySmartDevices = [
    //[smartDevices, iconPath, powerStatus]
    ["Smart Light", "lib/icons/light-bulb.png", true],
    ["Smart TV ", "lib/icons/smart-tv.png", false],
    ["Smart AC", "lib/icons/air-conditioner.png", false],
    ["Smart Fan", "lib/icons/fan.png", false],
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //custom app bar
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: horizontalPadding, vertical: verticalPadding),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    "lib/icons/menu.png",
                    height: 45,
                    color: Colors.grey[800],
                  ),
                  //ACCOUNT ICON
                  Icon(
                    Icons.person,
                    size: 45,
                    color: Colors.grey[800],
                  )
                ],
              ),
            ),
            const SizedBox(height: 20),
            // Welcome to Room Number Three
            Padding(
              padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text("Welcome To "),
                  Text(
                    "Room Number Three",
                    style: TextStyle(fontSize: 30),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            // ITEM GRID// SMART IMAGES
            Padding(
              padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
              child: Text("Smart Appliances"),
            ),
            Expanded(
              child: GridView.builder(
                  itemCount: mySmartDevices.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemBuilder: (context, index) {
                    return Container(); //SmartDeviceBox(smartDevicesName: '',);
                  }),
            )
          ],
        ),
      ),
    );
  }
}
