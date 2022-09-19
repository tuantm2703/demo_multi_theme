import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppImageWidget extends StatelessWidget {
  final String path;
  final double? height, width;

  const AppImageWidget({Key? key, required this.path, this.width, this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (path.contains('.png')) {
      return SizedBox(
        height: height,
        width: width,
        child: Image.asset(
          path,
          fit: BoxFit.cover,
        ),
      );
    } else if (path.contains('.svg')) {
      return SizedBox(
        height: height,
        width: width,
        child: SvgPicture.asset(
          path,
          fit: BoxFit.cover,
        ),
      );
    } else {
      return const SizedBox.shrink();
    }
  }
}
