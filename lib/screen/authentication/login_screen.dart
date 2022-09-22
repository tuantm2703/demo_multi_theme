import 'package:demo_multitheme/component/app_base_button.dart';
import 'package:demo_multitheme/component/app_image_widget.dart';
import 'package:demo_multitheme/component/app_scaffold.dart';
import 'package:demo_multitheme/config/app_asset_path.dart';
import 'package:demo_multitheme/config/app_color.dart';
import 'package:demo_multitheme/config/app_dimens.dart';
import 'package:demo_multitheme/config/app_route.dart';
import 'package:demo_multitheme/config/app_theme.dart';
import 'package:demo_multitheme/utils/app_util.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  Widget buildSocialLoginWidget({required String iconPath, required BuildContext context}) {
    return Container(
      height: AppDimens.space48,
      width: AppDimens.space48,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppDimens.radius45),
        color: AppTheme().currentTheme == ThemeMode.light ? AppColor.white : AppColor.dark200,
        border: Border.all(
          color: AppTheme().currentTheme == ThemeMode.light ? AppColor.black.withOpacity(0.1) : AppColor.black1B1B1B,
          width: AppDimens.space1,
        ),
      ),
      child: Center(
        child: AppImageWidget(
          path: iconPath,
          height: AppDimens.space20,
          width: AppDimens.space20,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passController = TextEditingController();
    ButtonStatus buttonStatus = ButtonStatus.initial;

    return AppScaffold(
      resizeToAvoidBottomInset: true,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppDimens.width16),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppDimens.sizedBoxH90(),
                    Text('Welcome!', style: Theme
                        .of(context)
                        .textTheme
                        .headline4),
                    AppDimens.sizedBoxH8(),
                    Text('Log In with Social or fill the form to continue',
                        style: Theme
                            .of(context)
                            .textTheme
                            .bodyText2),
                    AppDimens.sizedBoxH16(),
                    Row(
                      children: [
                        buildSocialLoginWidget(iconPath: AppAssetsPath.icFb, context: context),
                        AppDimens.sizedBoxW16(),
                        buildSocialLoginWidget(iconPath: AppAssetsPath.icGoogle, context: context),
                        AppDimens.sizedBoxW16(),
                        buildSocialLoginWidget(iconPath: AppAssetsPath.icTwitter, context: context),
                      ],
                    ),
                    AppDimens.sizedBoxH32(),
                    TextFormField(
                      controller: emailController,
                      decoration: InputDecoration(
                        hintText: 'Email',
                      ),
                      onChanged: (String? val) {

                      },
                    ),
                    AppDimens.sizedBoxH28(),
                    TextFormField(
                      controller: passController,
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Password',
                      ),
                      onChanged: (String? val) {
                      },
                    ),
                    AppDimens.sizedBoxH32(),
                    AppBaseButton(
                      onPressed: () {
                        Navigator.pushNamed(context, AppRoute.dashboard);
                      },
                      buttonTitle: 'Login',
                      status: ButtonStatus.done,
                    ),
                    AppDimens.sizedBoxH28(),
                    Center(
                      child: Text(
                        'Forgot Password?',
                        style: Theme
                            .of(context)
                            .textTheme
                            .caption,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: AppDimens.height44 + MediaQuery
                  .of(context)
                  .padding
                  .bottom),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Don\'t have an account?',
                    style: Theme
                        .of(context)
                        .textTheme
                        .caption,
                  ),
                  Text('Sign up', style: Theme
                      .of(context)
                      .textTheme
                      .caption
                      ?.copyWith(fontWeight: FontWeight.w600)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
