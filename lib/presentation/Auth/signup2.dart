import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:inkstop/application/signup/signup_bloc.dart';
import 'package:inkstop/presentation/Auth/login_screen.dart';
import 'package:inkstop/presentation/mainScreen/mainscreen.dart';

class SignupPage2 extends StatefulWidget {
  final String firstname;
  final String lastname;
  final String phone;
  final String email;
  final String aadharno;

  const SignupPage2({
    super.key,
    required this.firstname,
    required this.lastname,
    required this.phone,
    required this.email,
    required this.aadharno,
  });

  @override
  _SignupPage2State createState() => _SignupPage2State();
}

class _SignupPage2State extends State<SignupPage2> {
  TextEditingController usernameStr = TextEditingController();
  TextEditingController passwordStr = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 3, right: 3),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Username field
              buildTextField(usernameStr, 'Username', false),
              const SizedBox(height: 10),
              // Password field
              buildTextField(passwordStr, 'Password', true),
              const SizedBox(height: 20),
              // Sign up button
              GestureDetector(
                onTap: () {
                  print('🔵 Signup Button Pressed');
                  BlocProvider.of<SignupBloc>(context).add(
                    SignupEvent.signupButtonPressed(
                      firstname: widget.firstname,
                      lastname: widget.lastname,
                      phone: widget.phone,
                      email: widget.email,
                      username: usernameStr.text,
                      password: passwordStr.text,
                      aAdharno: widget.aadharno,
                    ),
                  );
                },
                child: BlocConsumer<SignupBloc, SignupState>(
                  listener: (context, state) {
                    state.successOrFailure.fold(() {}, (val) {
                      val.fold(
                        (failure) {
                          final message = failure.maybeWhen(
                            orElse: () => "Some error occurred",
                            UsernameAlreadyExists: () =>
                                'Username already exists',
                            EmailAlreadyExists: () => 'Email already exists',
                            AadharAlreadyExists: () =>
                                'Aadhar number already enrolled',
                          );
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text(message),
                            behavior: SnackBarBehavior.floating,
                            backgroundColor:
                                const Color.fromARGB(255, 47, 47, 47),
                          ));
                        },
                        (success) {
                          Future.delayed(const Duration(milliseconds: 1000),
                              () {
                            print("🔵 Executing Navigation...");
                            Navigator.of(context).pushAndRemoveUntil(
                              MaterialPageRoute(
                                  builder: (context) =>  LoginScreen()),
                              (route) => false, // ✅ Removes all previous routes
                            );
                          });
                        },
                      );
                    });
                  },
                  builder: (context, state) {
                    return Center(
                      child: state.isSubmitting
                          ? const CircularProgressIndicator()
                          : buildSignupButton(),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Helper method for TextField
  Widget buildTextField(
      TextEditingController controller, String hint, bool obscure) {
    return Container(
      height: 45,
      width: 360,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(6)),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 5),
          child: TextFormField(
            controller: controller,
            obscureText: obscure,
            style: GoogleFonts.averiaSansLibre(
                color: const Color.fromARGB(255, 0, 0, 0)),
            decoration: InputDecoration.collapsed(
                hintText: hint,
                border: InputBorder.none,
                hintStyle: GoogleFonts.averiaSansLibre(color: Colors.grey)),
          ),
        ),
      ),
    );
  }

  // Helper method for Sign Up Button
  Widget buildSignupButton() {
    return Container(
      height: 50,
      width: 200,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Color.fromARGB(186, 24, 43, 212),
            Color.fromARGB(255, 13, 72, 121),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(
          'Sign up',
          style: GoogleFonts.italiana(
              fontSize: 17,
              fontWeight: FontWeight.w900,
              letterSpacing: 3,
              color: Colors.white),
        ),
      ),
    );
  }
}
