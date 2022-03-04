import 'package:flutter/material.dart';

import '../../../constants/callbook_textstyles.dart';

class CallBookList extends StatelessWidget {
  const CallBookList({Key? key, required this.title, required this.subtitle})
      : super(key: key);
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text(
            title,
            style: CallBookTextStyles.fontSize12W400gray,
          ),
          subtitle: Text(
            subtitle,
            style: CallBookTextStyles.fontSize16W500black,
          ),
        ),
        Divider(),
      ],
    );
  }
}
