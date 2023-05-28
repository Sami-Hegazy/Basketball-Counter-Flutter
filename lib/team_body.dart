import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TeamBody extends StatelessWidget {
  final String teamName;
  final int teamNumber;
  final VoidCallback onPressPlusOne;
  final VoidCallback onPressPlusTwo;
  final VoidCallback onPressPlusThree;
  const TeamBody({
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
          style: TextStyle(
            fontSize: 35.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        14.verticalSpace,
        Container(
          padding: const EdgeInsets.all(4).w,
          margin: const EdgeInsets.all(4).w,
          alignment: Alignment.center,
          height: 200.h,
          width: 120.w,
          child: Text(
            '$teamNumber',
            style: TextStyle(
              fontSize: teamNumber <= 9.sp ? 170.sp : 90.sp,
              fontWeight: FontWeight.bold,
              color: teamNumber == 0 ? Colors.red : Colors.blueAccent,
            ),
          ),
        ),
        SizedBox(
          height: 40.h,
          width: 140.w,
          child: ElevatedButton(
            onPressed: onPressPlusOne,
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.orange,
              padding: EdgeInsets.symmetric(
                horizontal: 30.w,
              ),
            ),
            child: const FittedBox(
              fit: BoxFit.fitWidth,
              child: Text('Add 1 Point'),
            ),
          ),
        ),
        14.verticalSpace,
        SizedBox(
          height: 40.h,
          width: 140.w,
          child: ElevatedButton(
            onPressed: onPressPlusTwo,
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.orange,
              padding: EdgeInsets.symmetric(
                horizontal: 30.w,
              ),
            ),
            child: const FittedBox(
              fit: BoxFit.fitWidth,
              child: Text('Add 2 Points'),
            ),
          ),
        ),
        14.verticalSpace,
        SizedBox(
          height: 40.h,
          width: 140.w,
          child: ElevatedButton(
            onPressed: onPressPlusThree,
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.orange,
              padding: EdgeInsets.symmetric(
                horizontal: 30.w,
              ),
            ),
            child: const FittedBox(
                fit: BoxFit.fitWidth,
                child: Text(
                  'Add 3 Points',
                )),
          ),
        ),
        14.verticalSpace
      ],
    );
  }
}
