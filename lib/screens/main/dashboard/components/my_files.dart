import 'package:admin/constants.dart';
import 'package:admin/models/MyFiles.dart';
import 'package:admin/responsive.dart';
import 'package:admin/screens/main/dashboard/components/file_info_card.dart';
import 'package:admin/screens/main/dashboard/components/myfiles_header.dart';
import 'package:admin/screens/main/dashboard/components/recent_files_table.dart';
import 'package:admin/screens/main/dashboard/components/storage_info_card.dart';
import 'package:flutter/material.dart';

class MyFiles extends StatelessWidget {
  const MyFiles({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    return Column(
      children: [
        MyFilesHeader(),
        SizedBox(
          height: defaultPadding,
        ),
        Responsive(
          mobile: FileInfoCardGridView(
              crossAxisCount: _size.width < 650 ? 2 : 4,
              childAscpecRatio: _size.width < 650 ? 1.3 : 1),
          tablet: FileInfoCardGridView(
              childAscpecRatio: _size.width < 950 ? 1 : 1.2),
          desktop: FileInfoCardGridView(
              childAscpecRatio: _size.width < 1400 ? 1.2 : 1.4),
        ),
        RecentFilesTable(),
        if (Responsive.isMobile(context))
          SizedBox(
            height: defaultPadding,
          ),
        if (Responsive.isMobile(context)) StorageInfoCard(),
      ],
    );
  }
}

class FileInfoCardGridView extends StatelessWidget {
  const FileInfoCardGridView({
    Key key,
    this.crossAxisCount = 4,
    this.childAscpecRatio = 1.4,
  }) : super(key: key);

  final int crossAxisCount;
  final double childAscpecRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: demoMyFiels.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount,
          crossAxisSpacing: defaultPadding,
          mainAxisSpacing: defaultPadding,
          childAspectRatio: childAscpecRatio),
      itemBuilder: (ctx, index) {
        return FileInfoCard(
          info: demoMyFiels[index],
        );
      },
    );
  }
}
