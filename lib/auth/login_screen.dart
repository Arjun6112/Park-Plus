import 'package:brikow_assignment/auth/signup_screen.dart';
import 'package:brikow_assignment/home/home_screen.dart';
import 'package:brikow_assignment/utils/elevated_text_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(children: [
        const SizedBox(height: 50),
        Text("Everything",
            style: GoogleFonts.poppins(
              fontSize: 30,
            )),
        const SizedBox(height: 6),
        Text(
          "Your Car Needs",
          style: GoogleFonts.poppins(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 20),
        Lottie.network(
            "https://assets9.lottiefiles.com/private_files/lf30_lytjbphc.json"),
        const SizedBox(height: 20),
        ElevatedTextButton(
          text: "Login",
          color: Colors.blue,
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const SignUpScreen()));
          },
        ),
        const SizedBox(height: 10),
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const HomeScreen()));
          },
          child: Text("I am just browsing",
              style: GoogleFonts.poppins(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline)),
        ),
        const SizedBox(height: 15),
        Text("Privacy Policy | Terms of Service",
            style: GoogleFonts.poppins(
              fontSize: 12,
            ))
      ]),
    ));
  }
}
