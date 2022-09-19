import 'package:demo_multitheme/component/app_image_widget.dart';
import 'package:demo_multitheme/component/app_scaffold.dart';
import 'package:demo_multitheme/config/app_asset_path.dart';
import 'package:demo_multitheme/config/app_color.dart';
import 'package:demo_multitheme/config/app_config.dart';
import 'package:demo_multitheme/config/app_dimens.dart';
import 'package:demo_multitheme/config/app_route.dart';
import 'package:demo_multitheme/main.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    navigateToLogin();
  }

  navigateToLogin() async {
    await Future.delayed(AppConfig.splashTime(), () {
      Navigator.pushNamed(context, AppRoute.login);
    });
  }

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      body: Stack(
        children: [
          AppImageWidget(
            path: AppAssetsPath.splash,
            height: AppDimens.sh,
            width: AppDimens.sw,
          ),
          Center(
            child: Text(
              'Hansel & Son',
              style: TextStyle(color: AppColor.white, fontSize: AppDimens.space32, fontWeight: FontWeight.w400),
            ),
          ),
        ],
      ),
    );
  }
}
