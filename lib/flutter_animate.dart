import 'package:flutter/cupertino.dart';
import 'package:flutter_animate/flutter_animate.dart';

Widget animatedProfileHeader(BuildContext context, Widget header) {
  return header.animate().scale(
    duration: const Duration(milliseconds: 500),
    curve: Curves.easeInOut,
  );
}
