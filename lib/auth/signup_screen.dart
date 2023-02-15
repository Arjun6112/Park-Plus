import 'package:brikow_assignment/utils/elevated_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

Color _buttoncolor = Colors.grey;

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController _phoneController = TextEditingController();
  void checkNumber() {
    if (_phoneController.text.length == 10) {
      setState(() {
        _buttoncolor = Colors.blue;
      });
    } else {
      setState(() {
        _buttoncolor = Colors.grey.shade300;
      });
    }
  }

  @override
  void initState() {
    _phoneController.addListener(() {
      checkNumber();
    });
    super.initState();
  }

  @override
  void dispose() {
    _phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
          color: Colors.black,
          iconSize: 20,
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Lottie.network(
                  "https://assets9.lottiefiles.com/private_files/lf30_lytjbphc.json",
                  height: 250),
              const SizedBox(height: 20),
              TextField(
                maxLength: 10,
                onEditingComplete: () {
                  checkNumber();
                },
                controller: _phoneController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: 'Enter phone number to continue',
                  prefixIcon: Icon(Icons.flag),
                  prefixIconColor: Colors.black,
                  // prefixIcon: Image.asset(
                  //   "assets/images/india.png",
                  //   height: 2,
                  //   width: 2,
                  // ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedTextButton(
                text: "Send OTP",
                color: _buttoncolor,
                onPressed: () {},
              ),
              const SizedBox(height: 20),
              Text("Or",
                  style: GoogleFonts.poppins(
                      color: Colors.grey, fontWeight: FontWeight.bold)),
              const Divider(
                color: Colors.grey,
                thickness: 0.7,
              ),
              const SizedBox(height: 35),
              Text("One tap login with TrueCaller",
                  style: GoogleFonts.poppins(
                      color: Colors.blue, fontWeight: FontWeight.bold)),
              const SizedBox(height: 20),
              Text('You should have Truecaller app installed on this phone',
                  style: GoogleFonts.poppins(
                      fontSize: 12,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold))
            ],
          ),
        ),
      ),
    );
  }
}
