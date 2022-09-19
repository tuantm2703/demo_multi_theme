import 'package:demo_multitheme/config/app_color.dart';
import 'package:demo_multitheme/config/app_dimens.dart';
import 'package:demo_multitheme/utils/app_util.dart';
import 'package:flutter/material.dart';

class AppBaseButton extends StatelessWidget {
  final Function()? onPressed;
  final String buttonTitle;

  const AppBaseButton({Key? key, required this.onPressed, required this.buttonTitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: AppDimens.sw,
      height: AppDimens.space44,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(AppColor.orangeE36847),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              const RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero,
              )
          )
        ),
        onPressed: () {
          hideKeyboard();
          if (!isNullEmpty(onPressed)) {
            onPressed!();
          }
        },
        child: Center(
          child: FittedBox(
            fit: BoxFit.cover,
            child: Text(
              buttonTitle,
              style: TextStyle(
                  fontSize: AppDimens.space16,
                  color: AppColor.white),
            ),
          ),
        ),
      ),
    );
  }
}
