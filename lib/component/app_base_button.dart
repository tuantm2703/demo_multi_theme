import 'package:demo_multitheme/config/app_color.dart';
import 'package:demo_multitheme/config/app_dimens.dart';
import 'package:demo_multitheme/utils/app_util.dart';
import 'package:flutter/material.dart';

class AppBaseButton extends StatefulWidget {
  final ButtonStatus status;
  final Function()? onPressed;
  final String buttonTitle;

  const AppBaseButton({Key? key, required this.status, this.onPressed, required this.buttonTitle}) : super(key: key);

  @override
  State<AppBaseButton> createState() => _AppBaseButtonState();
}

class _AppBaseButtonState extends State<AppBaseButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: AppDimens.sw,
      height: AppDimens.space44,
      child: ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(
                widget.status == ButtonStatus.initial ? AppColor.grayNavy300 : AppColor.orangeE36847),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(const RoundedRectangleBorder(
              borderRadius: BorderRadius.zero,
            ))),
        onPressed: (widget.status == ButtonStatus.initial)
            ? null
            : () {
                hideKeyboard();
                if (!isNullEmpty(widget.onPressed)) {
                  widget.onPressed!();
                }
              },
        child: Center(
          child: FittedBox(
            fit: BoxFit.cover,
            child: Text(
              widget.buttonTitle,
              style: TextStyle(fontSize: AppDimens.space16, color: AppColor.white),
            ),
          ),
        ),
      ),
    );
  }
}
