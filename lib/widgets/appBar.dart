

import 'package:flutter/material.dart';

PreferredSizeWidget getAppBar(String title){
  return AppBar(
    title: Text(title),
    centerTitle: true,
    backgroundColor: Colors.white,
    foregroundColor: Colors.black87,
  );
}