import 'package:admin/constants.dart';
import 'package:admin/responsive.dart';
import 'package:flutter/material.dart';

class MyFilesHeader extends StatelessWidget {
  const MyFilesHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'My Files',
          style: Theme.of(context).textTheme.subtitle1,
        ),
        ElevatedButton.icon(
          onPressed: () {},
          style: TextButton.styleFrom(
              padding: EdgeInsets.symmetric(
                  horizontal: defaultPadding * 1.5,
                  vertical:
                      defaultPadding / (Responsive.isMobile(context) ? 2 : 1))),
          label: Text(
            'Add New',
            style: Theme.of(context).textTheme.subtitle1,
          ),
          icon: Icon(Icons.add),
        ),
      ],
    );
  }
}
