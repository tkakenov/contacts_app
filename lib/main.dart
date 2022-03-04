import 'package:flutter/material.dart';
import 'package:phonebook_app/screens/callbook_staff/callbook_staff.dart';
import 'package:phonebook_app/user.dart';

void main() {
  return runApp(CallBookApp());
}

class CallBookApp extends StatelessWidget {
  CallBookApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<User> users = [
      User(
        name: "Артыкбаев Расул Саткынович",
        position: "Директор",
        email: "email1@mail.ru",
        image: "assets/images/avatar1.png",
        phone: "+996 555 353541",
        birthday: "12.02.1998",
        id: 1,
      ),
      User(
        name: "Жыпаркулов Мырзабек Жыпаркулович",
        position: "Исполнительный диретор",
        email: "email2@mail.ru",
        image: "assets/images/avatar2.png",
        phone: "+996 555 353541",
        birthday: "12.02.1998",
        id: 2,
      ),
      User(
        name: "Алишек Алихан Мурзакулович",
        position: "Генеральный диреткор",
        email: "email3@mail.ru",
        image: "assets/images/avatar3.png",
        phone: "+996 555 353541",
        birthday: "12.02.1998",
        id: 3,
      ),
      User(
        name: "Иванов Иван Иванович",
        position: "Бухгалтер",
        email: "email4@mail.ru",
        image: "assets/images/avatar5.jpeg",
        phone: "+996 555 353541",
        birthday: "12.02.1998",
        id: 5,
      ),
      User(
        name: "Степанов Сергей Викторович",
        position: "Стажер",
        email: "email5@mail.ru",
        image: "assets/images/avatar6.jpeg",
        phone: "+996 555 353541",
        birthday: "12.02.1998",
        id: 6,
      ),
      User(
        name: "Брюс Вездесущий",
        position: "Охранник",
        email: "email6@mail.ru",
        image: "assets/images/avatar7.jpeg",
        phone: "+996 555 353541",
        birthday: "12.02.1998",
        id: 7,
      ),
      User(
        name: "Бокало Александр",
        position: "Юрист",
        email: "email7@mail.ru",
        image: "assets/images/avatar8.jpeg",
        phone: "+996 555 353541",
        birthday: "12.02.1998",
        id: 8,
      ),
      User(
        name: "Семенов Семен Сеченович",
        position: "Архитектор",
        email: "email8@mail.ru",
        image: "assets/images/avatar9.jpeg",
        phone: "+996 555 353541",
        birthday: "12.02.1998",
        id: 9,
      ),
      User(
        name: "Михайлов Сергей Сергеевич",
        position: "Водитель",
        email: "email9@mail.ru",
        image: "assets/images/avatar10.jpeg",
        phone: "+996 555 353541",
        birthday: "12.02.1998",
        id: 10,
      ),
      User(
        name: "Асанов Анвар Аскарбекович",
        position: "Машинист",
        email: "email10@mail.ru",
        image: "assets/images/avatar11.jpeg",
        phone: "+996 555 353541",
        birthday: "12.02.1998",
        id: 11,
      ),
    ];

    return MaterialApp(
      title: "CallBook",
      home: CallBookStaff(users: users),
    );
  }
}
