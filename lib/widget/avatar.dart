import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  const Avatar({Key? key, required this.size}) : super(key: key);
  final size;

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Column(
      children: [
        CircleAvatar(
          radius: _size.width * size,
          //backgroundImage: NetworkImage(url),
          backgroundColor: Colors.yellow[100],
        ),
        SizedBox(height: _size.height * 0.02),
        Text(
          'Diabetes App',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Merriweather',
            fontSize: 15,
          ),
        ),
      ],
    );
  }
}
