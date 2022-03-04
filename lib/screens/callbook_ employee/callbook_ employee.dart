import 'package:flutter/material.dart';
import 'package:phonebook_app/constants/callbook_textstyles.dart';

import '../../constants/callbook_colors.dart';
import '../callbook_staff/widgets/callbook_list.dart';

class CallBookEmployee extends StatelessWidget {
  final String name;
  final String image;
  final String position;
  final String email;
  final String phone;
  final String birthday;
  final int id;
  CallBookEmployee(
      {Key? key,
      required this.name,
      required this.image,
      required this.position,
      required this.email,
      required this.phone,
      required this.birthday,
      required this.id})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CallBookColors.background,
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: CallBookColors.background,
        elevation: 0,
      ),
      body: Column(
        children: [
          CircleAvatar(
            radius: 55,
            backgroundImage: AssetImage(image),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: Text(
              name,
              textAlign: TextAlign.center,
              style: CallBookTextStyles.fontSize20W500black,
            ),
          ),
          Text(
            position,
            style: CallBookTextStyles.fontSize16W400blue,
          ),
          const SizedBox(
            height: 25,
          ),
          const CallBookList(
            title: "Отдел",
            subtitle: "Отдел управления",
          ),
          CallBookList(
            title: "Email",
            subtitle: email,
          ),
          CallBookList(
            title: "Дата рождения",
            subtitle: birthday,
          ),
          CallBookList(
            title: "Телефон основной",
            subtitle: phone,
          ),
        ],
      ),
    );
  }
}
