
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled2/widgets/appBar.dart';


void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, widget){
        return MaterialApp(
          home: MyHomePage(),
        );
      },
    );
  }
}


class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final IconData add_icon = Icons.abc;
    final String add_button_name = "Get rand word";
    final IconData like_icon = Icons.favorite;
    final String like_button_name = 'Favorites';
    return Scaffold(
      appBar: getAppBar('Home Page'),
      body: ListView(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 50.h),
                    child: Text('We\'ll give you random word!!!', style: TextStyle(
                      fontSize: 24.h
                    ),),
                  ),
                  SizedBox(
                    height: 100.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _container(add_icon, add_button_name),
                      SizedBox(
                        width: 50.w,
                      ),
                      _container(like_icon, like_button_name)
                    ],
                  ),
                ],
              )
            ],
          )
        ],
      )
    );
  }

  Widget _container(IconData icon, String buttonName) {
    return Container(
      width: 100.w,
      height: 100.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15.w)),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 2,
                offset: Offset(0,2)
            )
          ]
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Icon(
              icon,
            size: 33,
          ),
          Positioned(
              bottom: 10.h,
              child: Text(buttonName, style: TextStyle(
                fontSize: 14.h
              ),)
          ),
        ],
      ),
    );
  }
}
