import 'package:flutter/material.dart';

class WaterTrackerAlert extends StatelessWidget {
  const WaterTrackerAlert({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('buradaaaa0');
    return AlertDialog(
      title: const Text('AlertDialog Title'),
      content: const Text('AlertDialog description'),
      actions: <Widget>[
        TextButton(
          onPressed: () => Navigator.pop(context, 'Cancel'),
          child: const Text('Cancel'),
        ),
        TextButton(
          onPressed: () => Navigator.pop(context, 'OK'),
          child: const Text('OK'),
        ),
      ],
    );
  }
}
