import 'package:flutter/material.dart';
import 'package:wedui/models/MyFiles.dart';
import '../../../constants.dart';
import '../../../responsive.dart';
import 'file_info_card.dart';

class MyFile extends StatelessWidget {
  const MyFile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "My Files",
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                ElevatedButton.icon(
                    style: TextButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                            horizontal: defaultPadding * 1.5,
                            vertical: defaultPadding
                        / (Responssive.isMobile(context)?2:1)
                        )),
                    onPressed: () {},
                    icon: Icon(Icons.add),
                    label: Text("Add New"))
              ],
            ),
            SizedBox(
              height: defaultPadding,
            ),
            Responssive(
                mobile:
                FileInfoCardGridView(
                  crossAxsisCount: size.width<650?2:4,
                  childAspectRatio: size.width<650 && size.width > 350 ? 1.3:1,
                ),
                tablet:
                  FileInfoCardGridView(),
                desktop:
                  FileInfoCardGridView(
                  childAspectRatio: size.width<1400 ?1.1:1.4,
                )
                  )
          ],
        );
  }
}

class FileInfoCardGridView extends StatelessWidget {

  final int crossAxsisCount;
  final double childAspectRatio;
  const FileInfoCardGridView({
    super.key,
     this.crossAxsisCount = 4,
     this.childAspectRatio= 1,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount:  demoMyFiles.length,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: crossAxsisCount,
          crossAxisSpacing: defaultPadding,
          mainAxisSpacing: defaultPadding ,
          childAspectRatio: childAspectRatio
          ),
      itemBuilder: (context, index) => FileInfoCard(info: demoMyFiles[index],),
    );
  }
}
