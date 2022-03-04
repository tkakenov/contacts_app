import 'package:flutter/material.dart';
import 'package:phonebook_app/constants/callbook_textstyles.dart';
import 'package:phonebook_app/screens/callbook_%20employee/callbook_%20employee.dart';

class CallBookContact extends StatelessWidget {
  const CallBookContact(
      {Key? key,
      required this.name,
      required this.image,
      required this.position,
      required this.email,
      required this.birthday,
      required this.phone,
      required this.id})
      : super(key: key);
  final String name;
  final String image;
  final String position;
  final String email;
  final String phone;
  final String birthday;
  final int id;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: Container(
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: Colors.white),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 11.0,
                horizontal: 16.0,
              ),
              child: CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage(image),
              ),
            ),
            Flexible(
              child: Text(
                name,
                style: CallBookTextStyles.fontSize16W400black,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CallBookEmployee(
                          name: name,
                          email: email,
                          position: position,
                          id: id,
                          image: image,
                          birthday: birthday,
                          phone: phone,
                        ),
                      ));
                },
                icon: const Icon(
                  Icons.call,
                  color: Colors.green,
                  size: 24,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
