import 'package:flutter/material.dart';
import 'package:untitled2/bloc/word_bloc.dart';
import 'package:untitled2/widgets/appBar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_bloc/flutter_bloc.dart';



class GetRandPage extends StatelessWidget {
  const GetRandPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar('Get Random Word'),
      body: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 120.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 320.w,
                  height: 300.h,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(19.w)),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.3),
                            spreadRadius: 0.5,
                            blurRadius: 0.8,
                            offset: Offset(0, 2)
                        )
                      ]
                  ),
                  child: BlocBuilder<WordBloc, WordState>(
                    builder: (context, state) {
                      return Center(
                        child: Text(
                            '${state.word}', style: TextStyle(
                          fontSize: 33
                        ),
                        ),
                      );
                    },
                  ),
                ),
                Row(
                  children: [
                    IconButton(
                        onPressed: (){},
                        icon: Icon(Icons.navigate_next)
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
