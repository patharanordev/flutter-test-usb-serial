import 'package:flutter/material.dart';

import 'package:test_usb_serial/pages/home.dart';
import 'package:test_usb_serial/pages/setting_baudrate.dart';
import 'package:test_usb_serial/pages/setting_device.dart';
import 'package:test_usb_serial/pages/settings.dart';
import 'package:test_usb_serial/stores/app.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => AppModel(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Serial Port Example",
      routes: {
        "/setting": (context) => SettingPage(),
        "/setting/device": (context) => SettingDevicePage(),
        "/setting/baudrate": (context) => SettingBaudratePage(),
      },
      home: HomePage(),
    );
  }
}
