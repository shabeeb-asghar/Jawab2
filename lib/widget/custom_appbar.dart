import 'package:alxza/widget/custom_container.dart';
import 'package:alxza/widget/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBar extends StatelessWidget {
  final String text;
  final VoidCallback? leadingOnTap;
  final VoidCallback? actionOnTap;
  final FontWeight? fontweight;
  final double? fontsize;
  final bool leading;

  final Widget? action;
  final Color? color;
  const CustomAppBar({
    super.key,
    required this.text,
    required this.leading,
    this.action,
    this.leadingOnTap,
    this.actionOnTap,
    this.fontweight,
    this.fontsize,
    this.color,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      margin: EdgeInsets.only(top: 50.h, bottom: 5.h),
      child: Row(
        children: [
          leading
              ? CustomContainer(
                  onTap: leadingOnTap ??
                      () {
                        Navigator.pop(context);
                      },
                  width: 35.w,
                  height: 35.w,
                  margin: EdgeInsets.only(bottom: 5.h),
                  borderRadius: 8.r,
                  borderColor: Colors.grey,
                  borderWidth: 1.w,
                  child: Center(
                    child: Icon(
                      Icons.arrow_back_ios_new,
                      color: Colors.grey,
                      size: 15.h,
                    ),
                  ),
                )
              : SizedBox(
                  width: 30.w,
                ),
          const Spacer(),
          Center(
            child: TextWidget(
              text: text,
              fontSize: fontsize ?? 18.sp,
              fontWeight: fontweight ?? FontWeight.w600,
            ),
          ),
          const Spacer(),
          action ??
              SizedBox(
                width: 30.w,
              )
        ],
      ),
    );
  }
}
