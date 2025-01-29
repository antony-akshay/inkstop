import 'package:flutter/material.dart';

class Creator extends StatelessWidget {
  const Creator({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
          child: Column(
        children: [
          Container(
            height: 300,
            width: 300,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40)),
                image: DecorationImage(
                  fit: BoxFit.cover,
                    image: AssetImage('assets/images/eventDetails.svg'))),
                
          )
        ],
      )),
    );
  }
}
