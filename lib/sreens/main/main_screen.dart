import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import '../../controllrs/MenuController.dart';
import '../../responsive.dart';
import '../Dashbord/dashbord_screen.dart';
import 'componets/side_menu.dart';
class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: context.read<MenuAppController>().scaffoldKey,
      drawer: Sidmenu(),
      body: SafeArea(
          child:Row(
            crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           if(Responssive.isDestop(context))Expanded(child: Sidmenu()),
          Expanded(
              flex: 5,
              child: Dashbordscreen()),
        ],
      )),
    );
  }
}

class DrawerList extends StatelessWidget {
  final String path;
  final String text;
  final VoidCallback press;

  const DrawerList({
    super.key,
    required this.path,
    required this.text,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      horizontalTitleGap: 0.0,
      leading: SvgPicture.asset(
        path,
        color: Colors.white54,
        height: 16,
      ),
      title: Text(text, style: TextStyle(color: Colors.white54)),
    );
  }
}
