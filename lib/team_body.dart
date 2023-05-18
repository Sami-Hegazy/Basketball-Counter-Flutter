import 'package:flutter/material.dart';

class TeamBody extends StatelessWidget {
  String teamName;
  int teamNumber;
  VoidCallback onPressPlusOne;
  VoidCallback onPressPlusTwo;
  VoidCallback onPressPlusThree;
  TeamBody({
    Key? key,
    required this.teamName,
    required this.teamNumber,
    required this.onPressPlusOne,
    required this.onPressPlusTwo,
    required this.onPressPlusThree,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          teamName,
          style: const TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 14),
        Container(
          padding: const EdgeInsets.all(4),
          margin: const EdgeInsets.all(4),
          alignment: Alignment.center,
          height: 200,
          width: 120,
          child: Text(
            '$teamNumber',
            style: TextStyle(
              fontSize: teamNumber <= 9 ? 170 : 65,
              fontWeight: FontWeight.bold,
              color: teamNumber == 0 ? Colors.red : Colors.blueAccent,
            ),
          ),
        ),
        SizedBox(
          height: 40,
          width: 140,
          child: ElevatedButton(
            onPressed: onPressPlusOne,
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.orange,
              padding: const EdgeInsets.symmetric(
                horizontal: 30,
              ),
            ),
            child: const FittedBox(
              fit: BoxFit.fitWidth,
              child: Text('Add 1 Point'),
            ),
          ),
        ),
        const SizedBox(height: 14),
        SizedBox(
          height: 40,
          width: 140,
          child: ElevatedButton(
            onPressed: onPressPlusTwo,
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.orange,
              padding: const EdgeInsets.symmetric(
                horizontal: 30,
              ),
            ),
            child: const FittedBox(
              fit: BoxFit.fitWidth,
              child: Text('Add 2 Points'),
            ),
          ),
        ),
        const SizedBox(height: 14),
        SizedBox(
          height: 40,
          width: 140,
          child: ElevatedButton(
            onPressed: onPressPlusThree,
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.orange,
              padding: const EdgeInsets.symmetric(
                horizontal: 30,
              ),
            ),
            child: const FittedBox(
                fit: BoxFit.fitWidth,
                child: Text(
                  'Add 3 Points',
                )),
          ),
        ),
        const SizedBox(height: 14),
      ],
    );
  }
}
