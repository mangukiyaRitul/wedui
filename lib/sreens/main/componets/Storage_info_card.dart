
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';

class StorageInfoCard extends StatelessWidget {

  final String titel,path,amountoffile;
  final double numOffiles;
  const StorageInfoCard({
    super.key,
    required this.titel,
    required this.path,
    required this.amountoffile,
    required this.numOffiles,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: defaultPadding),
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(defaultPadding)),
          border: Border.all(
              color: primaryColor.withOpacity(0.15),
              width: 2
          )
      ),
      child:Row(
        children: [
          SizedBox(
            height: 20,
            width: 20,
            child: SvgPicture.asset(path),
          ),
          Expanded(child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(titel,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                Text("$numOffiles Files",style: Theme.of(context).textTheme.bodySmall!.copyWith(color: Colors.white70),)
              ],
            ),
          ),),
          Text(amountoffile),
        ],
      ),
    );
  }
}