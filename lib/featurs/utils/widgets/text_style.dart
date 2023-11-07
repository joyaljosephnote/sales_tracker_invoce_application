import 'package:flutter/material.dart';

Text textHeding1({required String data, required double textSize}) {
  return Text(
    data,
    style: TextStyle(fontWeight: FontWeight.bold, fontSize: textSize),
  );
}

Text textHeding2({required String data, required double textSize}) {
  return Text(
    data,
    style: TextStyle(fontWeight: FontWeight.w500, fontSize: textSize),
  );
}
