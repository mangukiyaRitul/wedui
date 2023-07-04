import 'package:flutter/material.dart';

import '../main_screen.dart';

class Sidmenu extends StatelessWidget {
  const Sidmenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(children: [
          DrawerHeader(child: Image.asset("asset/images/logo.png")),
          DrawerList(path: 'asset/Icons/menu_dashboard.svg', press: () {}, text: 'Dashbord',),
          DrawerList(path: 'asset/Icons/menu_tran.svg', press: () {}, text: 'Transaction',),
          DrawerList(path: 'asset/Icons/menu_task.svg', press: () {}, text: 'Task',),
          DrawerList(path: 'asset/Icons/menu_doc.svg', press: () {}, text: 'Document',),
          DrawerList(path: 'asset/Icons/menu_st ore.svg', press: () {}, text: 'Store',),
          DrawerList(path: 'asset/Icons/menu_notification.svg', press: () {}, text: 'Notification',),
          DrawerList(path: 'asset/Icons/menu_profile.svg', press: () {}, text: 'Profile',),
          DrawerList(path: 'asset/Icons/menu_setting.svg', press: () {}, text: 'Srtting',),

        ],),
      ),
    );
  }
}
