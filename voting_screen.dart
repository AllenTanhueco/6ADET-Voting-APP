import 'package:flutter/material.dart';
import 'voting_container.dart';

class VotingScreen extends StatelessWidget {
  const VotingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "School of Computing Student Organizations",
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(254, 2, 202, 247),
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 3, 62, 125),
      ),
      body: Container(
        color: const Color.fromARGB(20, 40, 60, 80),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              VotingContainer('SOC CSC', 'assets/images/SOC-CSC.png', Icons.thumb_up),
              VotingContainer('Code Geeks', 'assets/images/CodeGeeks.png', Icons.thumb_up),
              VotingContainer('SANA', 'assets/images/SANA.png', Icons.thumb_up),
              VotingContainer('IGOARA', 'assets/images/IGOARA.png', Icons.thumb_up),
              VotingContainer('LOOP', 'assets/images/LOOP.png', Icons.thumb_up),
            ],
          ),
        ),
      ),
    );
  }
}
