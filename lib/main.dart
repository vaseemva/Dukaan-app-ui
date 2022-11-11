import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ui_screens_project/screens_.dart/AdditionalInformation%20.dart';
import 'package:ui_screens_project/screens_.dart/catalogue_screen.dart';




import 'package:ui_screens_project/screens_.dart/payments.dart';
import 'package:ui_screens_project/screens_.dart/ManageStore.dart';


main(){
runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      home:ScreenCatalogue() ,
    );
  }
}