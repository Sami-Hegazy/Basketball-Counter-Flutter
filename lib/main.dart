import 'package:basketball_counter/cupit/counter_cubit.dart';
import 'package:basketball_counter/cupit/counter_state.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'home_body.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: ((context) => const BasketBall()),
    ),
  );
}

class BasketBall extends StatelessWidget {
  const BasketBall({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return BlocProvider(
          create: (context) => CounterCubit(),
          child: MaterialApp(
            locale: DevicePreview.locale(context),
            builder: DevicePreview.appBuilder,
            debugShowCheckedModeBanner: false,
            title: 'BasketBall Counter',
            home: const HomePage(),
            theme: ThemeData(primaryColor: Colors.orange),
          ),
        );
      },
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BasketBall Counter'),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),
      body: const HomeBody(),
    );
  }
}
