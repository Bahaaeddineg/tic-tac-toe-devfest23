import 'package:flutter/material.dart';

import '../../../constants/colors.dart';
import '../../../logic/gameLogic/logic.dart';

Widget customTextField({
  required String hint,
  required TextEditingController controller,
  required Function func,
}) {
  return TextField(
    controller: controller,
    maxLength: 10,
    style: const TextStyle(color: kWhite, fontWeight: FontWeight.bold),
    cursorColor: kGrey,
    decoration: InputDecoration(
      enabledBorder: const OutlineInputBorder(
        borderSide: BorderSide(
          color: kGrey,
        ),
      ),
      focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: kWhite, width: 2),
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 20),
      fillColor: kWhite.withOpacity(0.05),
      filled: true,
      hintText: hint,
      hintStyle: const TextStyle(color: kGrey, fontSize: 14),
    ),
  );
}
