import 'package:flutter/material.dart';

class Responssive extends StatelessWidget {

  final Widget mobile;
  final Widget? tablet;
  final Widget desktop;
  const Responssive({super.key,
    required this.mobile,  this.tablet, required this.desktop});


  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 850;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width<1100 &&
      MediaQuery.of(context).size.width >= 850;

  static bool isDestop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1100;


  @override
  Widget build(BuildContext context) {

   final Size _size = MediaQuery.of(context).size;

   if(_size.width>=1100)
    {
      return desktop;
    }
   else if (_size.width>=850 && tablet != null)
     {
       return tablet!;
     }
   else
     {
       return mobile;
     }
  }
}
