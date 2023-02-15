import 'package:brikow_assignment/auth/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ElevatedTextButton extends StatelessWidget {
  const ElevatedTextButton(
      {super.key, required this.text, required this.color, this.onPressed});
  final String text;
  final Color color;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.9,
        height: 50,
        decoration: BoxDecoration(
            boxShadow: [BoxShadow()],
            color: color,
            borderRadius: BorderRadius.circular(10)),
        child: Center(
          child: Text(
            text,
            style: GoogleFonts.poppins(
                color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
