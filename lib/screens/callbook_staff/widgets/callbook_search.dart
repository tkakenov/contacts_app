import 'package:flutter/material.dart';
import 'package:phonebook_app/constants/callbook_colors.dart';
import 'package:phonebook_app/constants/callbook_textstyles.dart';

class CallBookSearch extends StatelessWidget {
  const CallBookSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      enableSuggestions: false,
      decoration: InputDecoration(
        border: const OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        fillColor: CallBookColors.textFieldBg,
        filled: true,
        prefixIcon: const Icon(Icons.search_rounded),
        labelText: "Поиск",
        labelStyle: CallBookTextStyles.fontSize16W300gray,
      ),
    );
  }
}
