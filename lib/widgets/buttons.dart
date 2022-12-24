import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Mybuttons extends StatelessWidget {
  Mybuttons({required this.icon, required this.number, super.key});

  IconData icon;
  final String number;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Column(
        children: [
          Icon(
            icon,
            size: 40,
          ),
          SizedBox(
            height: 10,
          ),
          Text(number),
        ],
      ),
    );
  }
}
