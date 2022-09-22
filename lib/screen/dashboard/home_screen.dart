import 'package:demo_multitheme/component/app_image_widget.dart';
import 'package:demo_multitheme/component/app_scaffold.dart';
import 'package:demo_multitheme/component/app_touchable_widget.dart';
import 'package:demo_multitheme/config/app_asset_path.dart';
import 'package:demo_multitheme/config/app_color.dart';
import 'package:demo_multitheme/config/app_dimens.dart';
import 'package:demo_multitheme/utils/app_util.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatelessWidget {
  final Function()? moveTab;
  const HomeScreen({Key? key, this.moveTab}) : super(key: key);

  buildBackgroundWidget({required String backgroundPath, required String title, required String subtitle}) {
    return Stack(
      children: [
        AppImageWidget(
          filterOpacity: true,
          path: backgroundPath,
          height: AppDimens.sh,
          width: AppDimens.sw,
        ),
        Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: AppDimens.space38, color: AppColor.white),
              ),
              AppDimens.sizedBoxH16(),
              Container(
                constraints: BoxConstraints(
                  maxWidth: AppDimens.sw / 2,
                ),
                child: Text(
                  subtitle,
                  maxLines: 3,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: AppDimens.space14, color: AppColor.white),
                ),
              ),
              AppDimens.sizedBoxH16(),
              AppTouchableWidget(
                onTap: () {
                  if(!isNullEmpty(moveTab)){
                    moveTab!();
                  }
                },
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: AppDimens.height10, horizontal: AppDimens.width36),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: AppColor.white,
                      width: AppDimens.space1,
                    ),
                  ),
                  child: Text(
                    'Explorer now',
                    maxLines: 3,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: AppDimens.space14, color: AppColor.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final PageController backgroundController = PageController();
    List<Widget> backgroundList = [
      buildBackgroundWidget(
        backgroundPath: AppAssetsPath.home1,
        title: 'Big Sales',
        subtitle: 'Lunar new year is a good chance to change old home stuffs into a new one',
      ),
      buildBackgroundWidget(
        backgroundPath: AppAssetsPath.home2,
        title: 'New Arrivals',
        subtitle: 'Our collections are inspired by the vivid nature that surrounds us',
      ),
      buildBackgroundWidget(
        backgroundPath: AppAssetsPath.home3,
        title: 'Products',
        subtitle: 'Inspired by the colours, motifs and vibrant landscape of nature',
      ),
      buildBackgroundWidget(
        backgroundPath: AppAssetsPath.home1,
        title: 'Big Sales',
        subtitle: 'Lunar new year is a good chance to change old home stuffs into a new one',
      ),
      buildBackgroundWidget(
        backgroundPath: AppAssetsPath.home2,
        title: 'New Arrivals',
        subtitle: 'Our collections are inspired by the vivid nature that surrounds us',
      ),
    ];
    return AppScaffold(
      body: Stack(
        children: [
          PageView(
            controller: backgroundController,
            children: backgroundList,
          ),
          SizedBox(
            height: AppDimens.sh,
            width: AppDimens.sw,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                AppDimens.sizedBoxH52(),
                Stack(
                  children: [
                    Center(
                      child: Text(
                        'Hansel & Son',
                        style:
                            TextStyle(color: AppColor.white, fontSize: AppDimens.space20, fontWeight: FontWeight.w400),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: AppDimens.width16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          AppImageWidget(
                            path: AppAssetsPath.icSearch,
                            height: AppDimens.space20,
                            width: AppDimens.space20,
                          ),
                          AppDimens.sizedBoxW16(),
                          AppImageWidget(
                            path: AppAssetsPath.icCircleMessage,
                            height: AppDimens.space20,
                            width: AppDimens.space20,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const Expanded(child: SizedBox()),
                SmoothPageIndicator(
                  controller: backgroundController,
                  count: backgroundList.length,
                  effect: ScrollingDotsEffect(
                    activeDotColor: AppColor.white,
                    dotColor: AppColor.white,
                    dotHeight: AppDimens.space4,
                    dotWidth: AppDimens.space4,
                    activeDotScale: 1.5,
                    maxVisibleDots: 5,
                  ),
                ),
                AppDimens.sizedBoxH16(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
