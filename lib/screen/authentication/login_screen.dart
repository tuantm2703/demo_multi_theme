import 'package:demo_multitheme/component/app_scaffold.dart';
import 'package:demo_multitheme/config/app_dimens.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppDimens.width16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppDimens.sizedBoxH90(),
            Text('Welcome!', style: Theme.of(context).textTheme.headline4),
            AppDimens.sizedBoxH8(),
            Text('Log In with Social or fill the form to continue', style: Theme.of(context).textTheme.subtitle2),
            AppDimens.sizedBoxH16(),
            buildSocialLoginWidget(),
          ],
        ),
      ),
    );
  }

  Widget buildSocialLoginWidget() {
    return Row(
      children: [],
    );
  }
}
