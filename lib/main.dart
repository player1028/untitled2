
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled2/bloc/word_bloc.dart';
import 'package:untitled2/screens/favorites.dart';
import 'package:untitled2/screens/home_screen.dart';
import 'package:untitled2/screens/rand_word_screen.dart';
import 'package:untitled2/widgets/appBar.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, widget){
        return MaterialApp(
          initialRoute: '/',
          routes: {
            '/': (context) => HomeScreen(),
            '/rw_page': (context) => BlocProvider.value(
              value: WordBloc(),
              child: GetRandPage(),
            ),
            '/favorites': (context) => FavoritesPage(),
          },
        );
      },
    );
  }
}



