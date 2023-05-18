import 'package:basketball_counter/team_body.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const RowElement(),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.orange,
            padding: const EdgeInsets.symmetric(
              horizontal: 50,
            ),
          ),
          child: const Text('Reset'),
        )
      ],
    );
  }
}

class RowElement extends StatefulWidget {
  const RowElement({super.key});

  @override
  State<RowElement> createState() => _RowElementState();
}

class _RowElementState extends State<RowElement> {
  int teamAPoints = 0;
  int teamBPoints = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        TeamBody(
          onPressPlusOne: () {
            setState(() {
              teamAPoints++;
            });
          },
          onPressPlusTwo: () {
            setState(() {
              teamAPoints += 2;
            });
          },
          onPressPlusThree: () {
            setState(() {
              teamAPoints += 3;
            });
          },
          teamNumber: teamAPoints,
          teamName: 'Team A',
        ),
        const SizedBox(
          height: 450,
          child: VerticalDivider(
            color: Colors.grey,
            indent: 50,
            endIndent: 50,
          ),
        ),
        TeamBody(
          onPressPlusOne: () {
            setState(() {
              teamBPoints++;
            });
          },
          onPressPlusTwo: () {
            setState(() {
              teamBPoints += 2;
            });
          },
          onPressPlusThree: () {
            setState(() {
              teamBPoints += 3;
            });
          },
          teamNumber: teamBPoints,
          teamName: 'Team B',
        ),
      ],
    );
  }
}
