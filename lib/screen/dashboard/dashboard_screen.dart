import 'package:demo_multitheme/component/app_image_widget.dart';
import 'package:demo_multitheme/component/app_scaffold.dart';
import 'package:demo_multitheme/component/app_touchable_widget.dart';
import 'package:demo_multitheme/config/app_asset_path.dart';
import 'package:demo_multitheme/config/app_color.dart';
import 'package:demo_multitheme/config/app_dimens.dart';
import 'package:demo_multitheme/main.dart';
import 'package:demo_multitheme/screen/dashboard/home_screen.dart';
import 'package:demo_multitheme/utils/app_util.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int selectedTab = 0;

  Widget buildNavigationBarItem({required String path, required BuildContext context, required int index}) {
    bool isSelected = selectedTab == index;
    return AppTouchableWidget(
      onTap: () {
        setState(() {
          selectedTab = index;
        });
      },
      child: AppImageWidget(
        path: path,
        width: AppDimens.space20,
        height: AppDimens.space20,
        svgIconColor: isSelected
            ? (isCurrentLightTheme() ? AppColor.darkNavy900 : AppColor.darkModePrimary)
            : Theme.of(context).iconTheme.color,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      body: IndexedStack(
        index: selectedTab,
        children: [
          HomeScreen(
            moveTab: (){
              setState(() {
                selectedTab = 1;
              });
            },
          ),
          Container(),
          Container(),
          Container(),
          Container(),
        ],
      ),
      bottomNavigationBar: Container(
        color: Theme.of(context).scaffoldBackgroundColor,
        padding: EdgeInsets.only(
          left: AppDimens.width34,
          right: AppDimens.width34,
          bottom: MediaQuery.of(context).padding.bottom + AppDimens.height21,
          top: AppDimens.height18,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            buildNavigationBarItem(path: AppAssetsPath.icHome, context: context, index: 0),
            buildNavigationBarItem(path: AppAssetsPath.icList, context: context, index: 1),
            buildNavigationBarItem(path: AppAssetsPath.icPayment, context: context, index: 2),
            buildNavigationBarItem(path: AppAssetsPath.icBell, context: context, index: 3),
            buildNavigationBarItem(path: AppAssetsPath.icProfile, context: context, index: 4),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          appTheme.toggleTheme();
        },
      ),
    );
  }
}
