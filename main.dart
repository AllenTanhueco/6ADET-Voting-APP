import 'package:flutter/material.dart';
import 'voting_screen.dart';

void main() {
  runApp(const VotingApp());
}

class VotingApp extends StatelessWidget {
  const VotingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Voting App',
      debugShowCheckedModeBanner: false,
      home: const VotingScreen(),
    );
  }
}
