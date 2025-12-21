import 'package:dalel_app/core/utils/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ForgotPasswordImage extends StatelessWidget {
  const ForgotPasswordImage({super.key});

  @override
  Widget build(BuildContext context) {
    return
    //  AspectRatio(
    //   aspectRatio: 235 / 235,
    //   child: SvgPicture.asset(AppImages.imagesForgotPassword),
    // );
    SizedBox(
      height: 235,
      width: 235,
      child: SvgPicture.asset(AppImages.imagesForgotPassword),
    );
  }
}
