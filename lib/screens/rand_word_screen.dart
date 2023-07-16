import 'package:flutter/material.dart';
import 'package:untitled2/widgets/appBar.dart';


class GetRandPage extends StatelessWidget {
  const GetRandPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar('Get Random Word'),
      body: Center(
        child: Text('cdd'),
      ),
    );
  }
}
