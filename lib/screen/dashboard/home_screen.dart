import 'package:demo_multitheme/component/app_image_widget.dart';
import 'package:demo_multitheme/component/app_scaffold.dart';
import 'package:demo_multitheme/config/app_asset_path.dart';
import 'package:demo_multitheme/config/app_dimens.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      body: AppImageWidget(
        filterOpacity: true,
        path: AppAssetsPath.home1,
        height: AppDimens.sh,
        width: AppDimens.sw,
      ),
    );
  }
}
