import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppDimens{
  //Screen size
  static final double sw = 1.sw;
  static final double sh = 1.sh;

  //Space
  static final double space32 = 32.sp;

  //Width
  static final double width16 = 16.w;

  //Size
  static SizedBox sizedBoxH8() => SizedBox(height: 8.h,);
  static SizedBox sizedBoxH16() => SizedBox(height: 16.h,);
  static SizedBox sizedBoxH90() => SizedBox(height: 90.h,);
}