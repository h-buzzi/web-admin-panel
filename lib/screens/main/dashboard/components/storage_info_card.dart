import 'package:admin/constants.dart';
import 'package:admin/screens/main/dashboard/components/chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class StorageInfoCard extends StatelessWidget {
  const StorageInfoCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Column(
        children: [
          Text(
            'Storage Details',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: defaultPadding,
          ),
          Chart(),
          SizedBox(
            height: defaultPadding,
          ),
          StorageDetailsTile(
            tileTitle: 'Documents',
            tileSubtitle: '1328 Files',
            tileTrailing: '32.00GB',
            tileSvg: 'assets/icons/Documents.svg',
          ),
          StorageDetailsTile(
            tileTitle: 'Media Files',
            tileSubtitle: '124 Files',
            tileTrailing: '28.16GB',
            tileSvg: 'assets/icons/media.svg',
          ),
          StorageDetailsTile(
            tileTitle: 'Other Files',
            tileSubtitle: '556 Files',
            tileTrailing: '21.60GB',
            tileSvg: 'assets/icons/folder.svg',
          ),
          StorageDetailsTile(
            tileTitle: 'Unknown Files',
            tileSubtitle: '228 Files',
            tileTrailing: '14.08GB',
            tileSvg: 'assets/icons/unknown.svg',
          ),
        ],
      ),
    );
  }
}

class StorageDetailsTile extends StatelessWidget {
  const StorageDetailsTile({
    final Key key,
    @required this.tileTitle,
    @required this.tileSubtitle,
    @required this.tileTrailing,
    @required this.tileSvg,
  }) : super(key: key);

  final String tileTitle, tileSubtitle, tileTrailing, tileSvg;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: defaultPadding),
      padding: EdgeInsets.all(defaultPadding / 2),
      decoration: BoxDecoration(
        border: Border.all(
          width: 2,
          color: primaryColor.withOpacity(0.15),
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(defaultPadding),
        ),
      ),
      child: ListTile(
        leading: SvgPicture.asset(
          tileSvg,
          height: 27,
        ),
        title: Text(
          tileTitle,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        subtitle: Text(
          tileSubtitle,
          style: TextStyle(color: Colors.grey),
        ),
        trailing: Text(tileTrailing),
      ),
    );
  }
}
