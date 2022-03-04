import 'package:flutter/material.dart';

import '../../../constants/callbook_colors.dart';

class CallBookAvatar extends StatelessWidget {
  const CallBookAvatar({Key? key, required this.image}) : super(key: key);
  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0),
      child: CircleAvatar(
        backgroundColor: CallBookColors.titleAndBorder,
        radius: 37,
        child: CircleAvatar(
          backgroundImage: AssetImage(image),
          radius: 35,
        ),
      ),
    );
  }
}
