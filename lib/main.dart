import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tas/view/HomePage.dart';

import 'cubit/users/state_user.dart';

void main() {
  runApp(MultiBlocProvider(
      providers: [BlocProvider(create: (context) => UserCubit())],
      child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
