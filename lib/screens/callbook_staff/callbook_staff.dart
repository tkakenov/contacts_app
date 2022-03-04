import 'package:flutter/material.dart';
import 'package:phonebook_app/constants/assets.dart';
import 'package:phonebook_app/screens/callbook_staff/widgets/callbook_avatar.dart';
import 'package:phonebook_app/screens/callbook_staff/widgets/callbook_contact.dart';
import 'package:phonebook_app/screens/callbook_staff/widgets/callbook_search.dart';

import '../../constants/callbook_colors.dart';
import '../../constants/callbook_textstyles.dart';

class CallBookStaff extends StatelessWidget {
  List users;
  CallBookStaff({Key? key, required this.users}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CallBookColors.background,
      appBar: AppBar(
        backgroundColor: CallBookColors.background,
        elevation: 0,
        title: Text(
          "Сотрудники",
          style: CallBookTextStyles.fontSize20W700black,
        ),
        centerTitle: false,
      ),
      body: SafeArea(
        minimum: const EdgeInsets.all(12),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CallBookSearch(),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Text(
                  "У кого сегодня день рождения",
                  style: CallBookTextStyles.fontSize16W700blue,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 14.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CallBookAvatar(image: Assets.avatar1),
                    CallBookAvatar(image: Assets.avatar2),
                    CallBookAvatar(image: Assets.avatar3),
                    CallBookAvatar(image: Assets.avatar4)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Text(
                  "У кого завтра день рождения",
                  style: CallBookTextStyles.fontSize16W700black,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 26.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CallBookAvatar(image: Assets.avatar1),
                    CallBookAvatar(image: Assets.avatar2),
                  ],
                ),
              ),
              contactList(users),
            ],
          ),
        ),
      ),
    );
  }
}

Widget contactList(List users) {
  return ListView.builder(
    controller: ScrollController(),
    shrinkWrap: true,
    itemCount: users.length,
    itemBuilder: ((context, index) {
      return CallBookContact(
        name: users[index].name.toString(),
        image: users[index].image.toString(),
        email: users[index].email.toString(),
        position: users[index].position.toString(),
        phone: users[index].phone.toString(),
        birthday: users[index].birthday.toString(),
        id: users[index].id,
      );
    }),
  );
}
