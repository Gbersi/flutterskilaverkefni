import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz,{super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize:MainAxisSize.min ,
        children: [
        Image.asset(
          "assets/images/blueyquiz.jpeg",
          width: 950,
          height: 350,
        ),
          const SizedBox(height: 80),
           Text("Learn About Bluey !",
            style: GoogleFonts.cinzel(
              color:Colors.black87,
              fontSize: 24,
            ),
          ),
          const SizedBox(height: 30,),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style:OutlinedButton.styleFrom(
              foregroundColor: Colors.black87
            ),
            icon: const Icon(Icons.arrow_right_alt_outlined),
              label: const Text("Start Quiz"),
          ),
      ],),
    );
  }
}