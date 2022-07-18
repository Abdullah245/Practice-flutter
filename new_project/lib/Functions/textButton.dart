import 'package:flutter/material.dart';

import '../Constant/clr.dart';
import '../Constant/text.dart';

textButton(context, page, text, Color clr1, {Color clr2 = Colors.white}) {
  return ElevatedButton(
    onPressed: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => page,
        ),
      );
    },
    child: Text(
      text,
      style: TextStyle(color: clr1, fontWeight: FontWeight.bold, fontSize: 16),
    ),
    style: ButtonStyle(
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
      ),
      backgroundColor: MaterialStateProperty.all(
        clr2,
      ),
    ),
  );
}  
