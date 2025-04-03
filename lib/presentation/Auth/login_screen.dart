import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:inkstop/application/login/login_bloc.dart';
import 'package:inkstop/presentation/mainScreen/mainscreen.dart';

// ignore: must_be_immutable
class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const SizedBox(
                  width: 5,
                ),
                Container(
                  height: 45,
                  width: 360,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(6)),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: TextFormField(
                        controller: usernameStr,
                        style: GoogleFonts.averiaSansLibre(
                            color: const Color.fromARGB(255, 0, 0, 0)),
                        decoration: InputDecoration.collapsed(
                            hintText: 'username',
                            border: InputBorder.none,
                            hintStyle: GoogleFonts.averiaSansLibre(
                                color: Colors.grey)),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const SizedBox(
                  width: 5,
                ),
                Container(
                  height: 45,
                  width: 360,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(6)),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: TextFormField(
                        obscureText: true,
                        controller: passwordStr,
                        style: GoogleFonts.averiaSansLibre(
                            color: const Color.fromARGB(255, 0, 0, 0)),
                        decoration: InputDecoration.collapsed(
                            hintText: 'password',
                            border: InputBorder.none,
                            hintStyle: GoogleFonts.averiaSansLibre(
                                color: Colors.grey)),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const SizedBox(
                  width: 5,
                ),
                GestureDetector(
                  onTap: () {
                    print("${usernameStr.text},${passwordStr.text}");
                    BlocProvider.of<LoginBloc>(context).add(
                        LoginEvent.loginButtonPressed(
                            identifier: usernameStr.text,
                            password: passwordStr.text));
                    // Navigator.of(context).pushReplacement(MaterialPageRoute(
                    //     builder: (context) => const Homescreen()));
                  },
                  child: BlocConsumer<LoginBloc, LoginState>(
                    listener: (context, state) {
                      state.succesFailure.fold(() {}, (val) {
                        val.fold((failure) {
                          final message = failure.maybeWhen(
                            InvalidPassword: () => 'invalid password',
                            InvalidCredentials: () => 'invalid credentials',
                            ServerError: () => 'server error',
                            orElse: () {},
                          );
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text("$message"),
                            behavior: SnackBarBehavior.floating,
                            backgroundColor:
                                const Color.fromARGB(255, 47, 47, 47),
                          ));
                        }, (success) {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>  Homescreen(username: usernameStr.text,)));
                        });
                      });
                    },
                    builder: (context, state) {
                      return Container(
                        height: 50,
                        width: 200,
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [
                              Color.fromARGB(186, 24, 43, 212),
                              Color.fromARGB(255, 13, 72, 121), // Black color
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          borderRadius: BorderRadius.circular(10),
                          color: const Color.fromARGB(255, 165, 70, 243),
                        ),
                        child: Center(
                            child: !state.isSubmitting
                                ? Text(
                                    'Login',
                                    style: GoogleFonts.italiana(
                                        fontWeight: FontWeight.w900,
                                        letterSpacing: 3,
                                        color: Colors.white),
                                  )
                                : const CircularProgressIndicator()),
                      );
                    },
                  ),
                ),
                const SizedBox(
                  width: 5,
                )
              ],
            )
          ],
        ),
      )),
    );
  }
}
