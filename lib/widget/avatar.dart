import 'package:flutter/material.dart';

import '../responsive.dart';

class Avatar extends StatelessWidget {
  const Avatar({Key? key, required this.size}) : super(key: key);
  final size;

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return CircleAvatar(
      radius: _size.width * size,
      //backgroundImage: NetworkImage(url),
      backgroundColor: Colors.yellow,
    );
  }
}
