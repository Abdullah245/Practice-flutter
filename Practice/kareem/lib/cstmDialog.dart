
import 'package:flutter/material.dart';

import 'loginPage.dart';

Future<void> customDia(BuildContext context, alertText) {
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Alert'),
          content: Text(alertText),
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignIn()),
                  );
                },
                child: Text(
                  'Ok',
                  style: TextStyle(color: Colors.black),
                ))
          ],
        );
      });
}
