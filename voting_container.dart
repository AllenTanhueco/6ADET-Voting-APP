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
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
        });
      },
      child: Container(
        height: 100,
        width: 350,
        margin: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: isSelected
              ? Colors.blueAccent.withOpacity(0.8)
              : const Color.fromARGB(80, 255, 19, 7),
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
            
          ],
        ),
      ),
    );
  }
}
