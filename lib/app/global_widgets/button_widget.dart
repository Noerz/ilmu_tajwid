import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final VoidCallback navigation;
  final Color color;

  const CustomButton({
    required this.title,
    required this.navigation,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 50,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: Colors.black, // Warna garis tepi
          width: 2, // Lebar garis tepi
        ),
      ),
      child: TextButton(
        onPressed: navigation,
        child: Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}