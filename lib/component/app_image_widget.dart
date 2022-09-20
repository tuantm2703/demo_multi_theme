import 'package:demo_multitheme/config/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppImageWidget extends StatelessWidget {
  final String path;
  final double? height, width;
  final Color? svgIconColor;
  final bool? filterOpacity;

  const AppImageWidget(
      {Key? key, required this.path, this.width, this.height, this.svgIconColor, this.filterOpacity = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (path.contains('.png')) {
      return filterOpacity == true
          ? Container(
              height: height,
              width: width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage(path),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(AppColor.gray001200.withOpacity(0.4), BlendMode.dstATop),
              )))
          : SizedBox(
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
          color: svgIconColor,
        ),
      );
    } else {
      return const SizedBox.shrink();
    }
  }
}
