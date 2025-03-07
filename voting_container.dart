import 'package:flutter/material.dart';

class VotingContainer extends StatefulWidget {
  final String text;
  final String imagePath;
  final IconData icon;

  const VotingContainer(this.text, this.imagePath, this.icon, {super.key});

  @override
  State<VotingContainer> createState() => _VotingContainerState();
}

class _VotingContainerState extends State<VotingContainer> {
  int voteCount = 0; 

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          voteCount++; 
        });
      },
      child: Container(
        height: 100,
        width: 350,
        margin: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 110, 130, 165),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              widget.text,
              style: const TextStyle(fontSize: 20, color: Colors.white),
            ),
            Image.asset(
              widget.imagePath,
              width: 50,
              height: 50,
            ),
            Icon(widget.icon, color: Colors.white),
            Text(
              '$voteCount', 
              style: const TextStyle(fontSize: 20, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
