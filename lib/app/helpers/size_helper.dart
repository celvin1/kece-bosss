import 'package:flutter/material.dart';

Size displaysize(BuildContext context) {
  debugPrint('size = ' + MediaQuery.of(context).size.toString());
  return MediaQuery.of(context).size;
}

double displayHeight(BuildContext context) {
  debugPrint('Height = ' + displaysize(context).height.toString());
  return displaysize(context).height;
}

double displaywidth(BuildContext context) {
  debugPrint('width = ' + displaysize(context).width.toString());
  return displaysize(context).width;
}
