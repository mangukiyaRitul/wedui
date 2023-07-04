
import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'Chart.dart';
import 'Storage_info_card.dart';

class Storage_Detile extends StatelessWidget {
  const Storage_Detile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  Container(
        padding: EdgeInsets.all(defaultPadding),
        // height: 500,
        decoration: BoxDecoration(
            color: secondaryColor,
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Storage Details",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                )),
            SizedBox(height: defaultPadding,),
            Chart(),
            SizedBox(height: defaultPadding,),
            StorageInfoCard(titel: 'Documents Files', amountoffile: '1328', path: 'asset/Icons/Documents.svg', numOffiles: 1.5 ,),
            StorageInfoCard(titel: 'Media Files', amountoffile: '1328', path: 'asset/Icons/media.svg', numOffiles: 15.3 ,),
            StorageInfoCard(titel: 'Other Files', amountoffile: '1328', path: 'asset/Icons/folder.svg', numOffiles: 1.3 ,),
            StorageInfoCard(titel: 'Unknown Files', amountoffile: '1328', path: 'asset/Icons/unknown.svg', numOffiles: 1.5 ,),
          ],
        ),
    );
  }
}

