import 'package:admin/constants.dart';
import 'package:admin/responsive.dart';
import 'package:admin/screens/main/dashboard/components/dashboard_header.dart';
import 'package:admin/screens/main/dashboard/components/my_files.dart';
import 'package:admin/screens/main/dashboard/components/storage_info_card.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            DashboardHeader(),
            SizedBox(
              height: defaultPadding,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 7,
                  child: MyFiles(),
                ),
                if (!Responsive.isMobile(context))
                  SizedBox(
                    width: defaultPadding,
                  ),
                if (!Responsive.isMobile(context))
                  Expanded(
                    flex: 3,
                    child: StorageInfoCard(),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
