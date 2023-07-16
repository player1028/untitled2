import 'package:flutter/material.dart';
import 'package:untitled2/widgets/appBar.dart';


class FavoritesPage extends StatelessWidget {
  const FavoritesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar('Favorites Page'),
      body: Center(
        child: Text('Favorite Page'),
      ),
    );
  }
}
