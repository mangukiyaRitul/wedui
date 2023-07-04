import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wedui/constants.dart';
import 'package:wedui/models/resentFile.dart';
import 'package:wedui/responsive.dart';
import '../main/componets/Chart.dart';
import '../main/componets/Headers.dart';
import '../main/componets/my_file.dart';
import '../main/componets/Storage_details.dart';
import '../main/componets/Storage_info_card.dart';
import '../main/componets/recent_file.dart';

class Dashbordscreen extends StatelessWidget {
  const Dashbordscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        primary: false,
        padding: EdgeInsets.all(defaultPadding),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // header
            Header(),

            SizedBox(
              height: defaultPadding,
            ),

            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 5,
                  child: Column(
                    children: [
                      MyFile(),
                      SizedBox(
                        height: defaultPadding,),
                      RecentFiles(),
                      if(Responssive.isMobile(context))SizedBox(
                        height: defaultPadding,
                      ),
                      if(Responssive.isMobile(context)) Storage_Detile(),
                    ],
                  ),
                ),
                if(!Responssive.isMobile(context))SizedBox(
                  width: defaultPadding,
                ),
                if(!Responssive.isMobile(context)) Expanded(flex: 2, child: Storage_Detile()),
              ],
            ),
          ],
        ),
      ),
    );
  }
}