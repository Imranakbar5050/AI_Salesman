import 'package:flutter/cupertino.dart';

class customSizeBox extends StatelessWidget {
  double? height;
  double? width;
  customSizeBox({super.key, this.width, this.height});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
    );
  }
}
