import 'package:basketball_counter/cupit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:basketball_counter/team_body.dart';

import 'cupit/counter_state.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        RowElement(),
        ElevatedButton(
          onPressed: () {
            BlocProvider.of<CounterCubit>(context).counterReset();
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.orange,
            padding: EdgeInsets.symmetric(
              horizontal: 50.sp,
            ),
          ),
          child: const Text('Reset'),
        )
      ],
    );
  }
}

class RowElement extends StatelessWidget {
  const RowElement({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(
      builder: (context, state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TeamBody(
              onPressPlusOne: () {
                BlocProvider.of<CounterCubit>(context)
                    .counterIncrement(teamName: "A", buttonNumber: 1);
              },
              onPressPlusTwo: () {
                BlocProvider.of<CounterCubit>(context)
                    .counterIncrement(teamName: "A", buttonNumber: 2);
              },
              onPressPlusThree: () {
                BlocProvider.of<CounterCubit>(context)
                    .counterIncrement(teamName: "A", buttonNumber: 3);
              },
              teamNumber: BlocProvider.of<CounterCubit>(context).teamAPoints,
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
                BlocProvider.of<CounterCubit>(context)
                    .counterIncrement(teamName: "B", buttonNumber: 1);
              },
              onPressPlusTwo: () {
                BlocProvider.of<CounterCubit>(context)
                    .counterIncrement(teamName: "B", buttonNumber: 2);
              },
              onPressPlusThree: () {
                BlocProvider.of<CounterCubit>(context)
                    .counterIncrement(teamName: "B", buttonNumber: 3);
              },
              teamNumber: BlocProvider.of<CounterCubit>(context).teamBPoints,
              teamName: 'Team B',
            ),
          ],
        );
      },
      listener: (context, state) {
        if (state is CounterAIncrementState) {
        } else {}
      },
    );
  }
}
