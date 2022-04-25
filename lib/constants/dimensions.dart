import 'package:flutter/material.dart';

const mobileWidth = 600;
const tabletWidth = 1280;

setWidth(context, ratio) {
  var width = MediaQuery.of(context).size.width * ratio;
  return width;
}

setHeight(context, ratio) {
  var height = MediaQuery.of(context).size.height * ratio;
  return height;
}
