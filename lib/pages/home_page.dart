import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
    ["Smart Fan", "lib/icons/fan.png", false],
    ["Smart Light", "lib/icons/light-bulb.png", true],
    ["Smart TV ", "lib/icons/smart-tv.png", false],
    ["Smart AC", "lib/icons/air-conditioner.png", false],
  ];
  //POWER BUTTON SWITCH
  void powerSwitchChanged(bool value, int index) {
    setState(() {
      mySmartDevices[index][2] = value;
    });
  }

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
                children: [
                  Text(
                    "Welcome To, ",
                    style: GoogleFonts.abel(
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    "Room Number Three",
                    style: GoogleFonts.bebasNeue(
                      fontSize: 40,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
              child: Divider(
                color: Colors.black,
              ),
            ),
            // ITEM GRID// SMART IMAGES
            Padding(
              padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
              child: Text(
                "Smart Appliances",
                style: GoogleFonts.abel(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            // SizedBox(
            //   height: 30,
            // ),
            Expanded(
              child: GridView.builder(
                  itemCount: mySmartDevices.length,
                  padding: const EdgeInsets.all(25.0),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, childAspectRatio: 1 / 1.2),
                  itemBuilder: (context, index) {
                    return SmartDeviceBox(
                      smartDevicesName: mySmartDevices[index][0],
                      iconPath: mySmartDevices[index][1],
                      powerOn: mySmartDevices[index][2],
                      onChanged: (value) => powerSwitchChanged(value, index),
                    ); //SmartDeviceBox(smartDevicesName: '',);
                  }),
            )
          ],
        ),
      ),
    );
  }
}
