import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppDimens{
  //Screen size
  static final double sw = 1.sw;
  static final double sh = 1.sh;

  //Space
  static final double space1 = 1.sp;
  static final double space16 = 16.sp;
  static final double space20 = 20.sp;
  static final double space32 = 32.sp;
  static final double space44 = 44.sp;
  static final double space48 = 48.sp;

  //Width
  static final double width16 = 16.w;
  static final double width34 = 34.w;

  //Height
  static final double height18 = 18.h;
  static final double height21 = 21.h;
  static final double height44 = 44.h;
  static final double height80 = 80.h;

  //Radius
  static final double radius45 = 45.r;

  //Size
  static SizedBox sizedBoxH8() => SizedBox(height: 8.h,);
  static SizedBox sizedBoxH16() => SizedBox(height: 16.h,);
  static SizedBox sizedBoxH28() => SizedBox(height: 28.h,);
  static SizedBox sizedBoxH32() => SizedBox(height: 32.h,);
  static SizedBox sizedBoxH90() => SizedBox(height: 90.h,);

  static SizedBox sizedBoxW16() => SizedBox(width: 16.w,);
}