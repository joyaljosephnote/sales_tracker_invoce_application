import 'package:flutter/material.dart';

class BoxDecorationForContainer {
  // ignore: non_constant_identifier_names
  BoxDecoration BoxShadowDecoration() {
    return const BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.all(
        Radius.circular(12),
      ),
      boxShadow: [
        BoxShadow(
          color: Color.fromARGB(255, 25, 11, 127),
          spreadRadius: 0,
          blurRadius: 6,
          offset: Offset(0, 3),
        ),
      ],
    );
  }
}
