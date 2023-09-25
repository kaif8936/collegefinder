import 'package:collegefinder/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

enum ButtonType { primary, secondary }

class Button extends StatelessWidget {
  final VoidCallback onTap;
  final String text;
  final bool enabled;
  final ButtonType buttonType;

  const Button({
    super.key,
    required this.onTap,
    required this.text,
    this.enabled = true,
    this.buttonType = ButtonType.primary,
  });

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: enabled ? 1 : 0.4,
      child: switch (buttonType) {
        ButtonType.primary => primary(),
        ButtonType.secondary => secondary(),
      },
    );
  }

  Widget primary() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(10.r),
        boxShadow: [
          BoxShadow(
            color: AppColors.btnShadow,
            offset: const Offset(1, 1),
          ),
        ],
      ),
      child: Material(
        color: const Color(0xff0E3C6E),
        borderRadius: BorderRadius.circular(10.r),
        child: InkWell(
          borderRadius: BorderRadius.circular(10.r),
          splashColor: AppColors.btnRipple,
          onTap: () {
            if (enabled) onTap();
          },
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 7.w, vertical: 6.h),
            color: AppColors.transparent,
            child: Center(
              child: Text(
                text,
                style: TextStyle(color: AppColors.white, fontSize: 10.sp),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget secondary() {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xff0E3C6E),
        borderRadius: BorderRadius.circular(10.r),
        border: Border.all(
          color: AppColors.green18,
          width: 1.w,
        ),
      ),
      child: Material(
        color: AppColors.transparent,
        borderRadius: BorderRadius.circular(10.r),
        child: InkWell(
          borderRadius: BorderRadius.circular(10.r),
          splashColor: AppColors.btnRipple,
          onTap: () {
            if (enabled) onTap();
          },
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
            color: AppColors.transparent,
            child: Center(
              child: Text(
                text,
                style: TextStyle(
                  color: AppColors.white,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
