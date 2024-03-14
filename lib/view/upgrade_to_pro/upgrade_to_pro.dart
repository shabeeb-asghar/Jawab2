import 'package:alxza/view/payment_method/payment_method.dart';
import 'package:alxza/widget/colors.dart';
import 'package:alxza/widget/custom_appbar.dart';
import 'package:alxza/widget/text_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class Upgrade_to_pro extends StatefulWidget {
  const Upgrade_to_pro({super.key});

  @override
  State<Upgrade_to_pro> createState() => _Upgrade_to_proState();
}

int i = 0;

class _Upgrade_to_proState extends State<Upgrade_to_pro> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  PageController controller = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: ((context) => const Payment_method())));
        },
        child: SizedBox(
          height: ScreenUtil().screenHeight,
          width: ScreenUtil().screenWidth,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.w),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CustomAppBar(
                    text: "Upgrade to Pro",
                    leading: true,
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  SizedBox(
                    height: 630.h,
                    width: ScreenUtil().screenWidth,
                    child: PageView(
                      controller: controller,
                      onPageChanged: (val) {
                        setState(() {
                          i = val;
                        });
                      },
                      children: [
                        Container(
                          height: 630.h,
                          width: 335.w,
                          decoration: BoxDecoration(
                              color: primaryColor,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30.r))),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 30.w),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 40.h,
                                  //  color: Colors.amberAccent,
                                ),
                                TextWidget(
                                  text: "Free",
                                  color: Colors.white,
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                                Container(
                                  height: 10.h,
                                  //  color: Colors.amberAccent,
                                ),
                                TextWidget(
                                  text: "Basic chat functionality",
                                  color: Colors.white,
                                  fontSize: 11.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                                SizedBox(
                                  height: 60.h,
                                  //  color: Colors.brown,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      SizedBox(
                                        height: 55.h,
                                        //   color: Colors.brown,
                                        child: TextWidget(
                                          text: "\$0",
                                          color: Colors.white,
                                          fontSize: 30.sp,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 30.h,
                                        // color: Colors.amber,
                                        child: TextWidget(
                                          text: "/mo",
                                          color: Colors.white,
                                          fontSize: 11.sp,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 3.h,
                                  //  color: Colors.amberAccent,
                                ),
                                SizedBox(
                                  height: 20.h,
                                  //  color: Colors.brown,
                                  child: TextWidget(
                                    text: "Free Forever",
                                    color: Colors.white,
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Container(
                                  height: 40.h,
                                  //  color: Colors.amberAccent,
                                ),
                                Divider(
                                  color:
                                      const Color.fromARGB(255, 151, 151, 143),
                                  thickness: 1.6.sp,
                                ),
                                Container(
                                  height: 30.h,
                                  // color: Colors.amberAccent,
                                ),
                                SizedBox(
                                  height: 40.h,
                                  // color: Colors.amberAccent,
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.check_circle,
                                        color: Colors.white,
                                        size: 18.sp,
                                      ),
                                      Container(
                                        width: 20.w,
                                        //  color: Colors.amberAccent,
                                      ),
                                      TextWidget(
                                        text:
                                            "Only available when demand is low",
                                        color: Colors.white,
                                        fontSize: 10.sp,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 8.h,
                                  // color: Colors.amberAccent,
                                ),
                                SizedBox(
                                  height: 40.h,
                                  // color: Colors.amberAccent,
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.check_circle,
                                        color: Colors.white,
                                        size: 18.sp,
                                      ),
                                      Container(
                                        width: 20.w,
                                        //  color: Colors.amberAccent,
                                      ),
                                      TextWidget(
                                        text: "Slow response speed",
                                        color: Colors.white,
                                        fontSize: 10.sp,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 8.h,
                                  // color: Colors.amberAccent,
                                ),
                                SizedBox(
                                  height: 40.h,
                                  // color: Colors.amberAccent,
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.check_circle,
                                        color: Colors.white,
                                        size: 18.sp,
                                      ),
                                      Container(
                                        width: 20.w,
                                        //  color: Colors.amberAccent,
                                      ),
                                      TextWidget(
                                        text: "New feature update are slower",
                                        color: Colors.white,
                                        fontSize: 10.sp,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 8.h,
                                  // color: Colors.amberAccent,
                                ),
                                SizedBox(
                                  height: 40.h,
                                  // color: Colors.amberAccent,
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.check_circle,
                                        color: Colors.white,
                                        size: 18.sp,
                                      ),
                                      Container(
                                        width: 20.w,
                                        //  color: Colors.amberAccent,
                                      ),
                                      TextWidget(
                                        text: "30 day history",
                                        color: Colors.white,
                                        fontSize: 10.sp,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 8.h,
                                  // color: Colors.amberAccent,
                                ),
                                SizedBox(
                                  height: 40.h,
                                  // color: Colors.amberAccent,
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.check_circle,
                                        color: Colors.white,
                                        size: 20.sp,
                                      ),
                                      Container(
                                        width: 20.w,
                                        //  color: Colors.amberAccent,
                                      ),
                                      TextWidget(
                                        text: "Up to 1000 message/me",
                                        color: Colors.white,
                                        fontSize: 10.sp,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 630.h,
                          width: 335.w,
                          decoration: BoxDecoration(
                              color: primaryColor,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30.r))),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 30.w),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 40.h,
                                  //  color: Colors.amberAccent,
                                ),
                                TextWidget(
                                  text: "Free",
                                  color: Colors.white,
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                                Container(
                                  height: 10.h,
                                  //  color: Colors.amberAccent,
                                ),
                                TextWidget(
                                  text: "Basic chat functionality",
                                  color: Colors.white,
                                  fontSize: 11.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                                SizedBox(
                                  height: 60.h,
                                  //  color: Colors.brown,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      SizedBox(
                                        height: 55.h,
                                        //   color: Colors.brown,
                                        child: TextWidget(
                                          text: "\$0",
                                          color: Colors.white,
                                          fontSize: 30.sp,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 30.h,
                                        // color: Colors.amber,
                                        child: TextWidget(
                                          text: "/mo",
                                          color: Colors.white,
                                          fontSize: 11.sp,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 3.h,
                                  //  color: Colors.amberAccent,
                                ),
                                SizedBox(
                                  height: 20.h,
                                  //  color: Colors.brown,
                                  child: TextWidget(
                                    text: "Free Forever",
                                    color: Colors.white,
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Container(
                                  height: 40.h,
                                  //  color: Colors.amberAccent,
                                ),
                                Divider(
                                  color:
                                      const Color.fromARGB(255, 151, 151, 143),
                                  thickness: 1.6.sp,
                                ),
                                Container(
                                  height: 30.h,
                                  // color: Colors.amberAccent,
                                ),
                                SizedBox(
                                  height: 40.h,
                                  // color: Colors.amberAccent,
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.check_circle,
                                        color: Colors.white,
                                        size: 18.sp,
                                      ),
                                      Container(
                                        width: 20.w,
                                        //  color: Colors.amberAccent,
                                      ),
                                      TextWidget(
                                        text:
                                            "Only available when demand is low",
                                        color: Colors.white,
                                        fontSize: 10.sp,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 8.h,
                                  // color: Colors.amberAccent,
                                ),
                                SizedBox(
                                  height: 40.h,
                                  // color: Colors.amberAccent,
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.check_circle,
                                        color: Colors.white,
                                        size: 18.sp,
                                      ),
                                      Container(
                                        width: 20.w,
                                        //  color: Colors.amberAccent,
                                      ),
                                      TextWidget(
                                        text: "Slow response speed",
                                        color: Colors.white,
                                        fontSize: 10.sp,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 8.h,
                                  // color: Colors.amberAccent,
                                ),
                                SizedBox(
                                  height: 40.h,
                                  // color: Colors.amberAccent,
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.check_circle,
                                        color: Colors.white,
                                        size: 18.sp,
                                      ),
                                      Container(
                                        width: 20.w,
                                        //  color: Colors.amberAccent,
                                      ),
                                      TextWidget(
                                        text: "New feature update are slower",
                                        color: Colors.white,
                                        fontSize: 10.sp,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 8.h,
                                  // color: Colors.amberAccent,
                                ),
                                SizedBox(
                                  height: 40.h,
                                  // color: Colors.amberAccent,
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.check_circle,
                                        color: Colors.white,
                                        size: 18.sp,
                                      ),
                                      Container(
                                        width: 20.w,
                                        //  color: Colors.amberAccent,
                                      ),
                                      TextWidget(
                                        text: "30 day history",
                                        color: Colors.white,
                                        fontSize: 10.sp,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 8.h,
                                  // color: Colors.amberAccent,
                                ),
                                SizedBox(
                                  height: 40.h,
                                  // color: Colors.amberAccent,
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.check_circle,
                                        color: Colors.white,
                                        size: 20.sp,
                                      ),
                                      Container(
                                        width: 20.w,
                                        //  color: Colors.amberAccent,
                                      ),
                                      TextWidget(
                                        text: "Up to 1000 message/me",
                                        color: Colors.white,
                                        fontSize: 10.sp,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 630.h,
                          width: 335.w,
                          decoration: BoxDecoration(
                              color: primaryColor,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30.r))),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 30.w),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 40.h,
                                  //  color: Colors.amberAccent,
                                ),
                                TextWidget(
                                  text: "Free",
                                  color: Colors.white,
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                                Container(
                                  height: 10.h,
                                  //  color: Colors.amberAccent,
                                ),
                                TextWidget(
                                  text: "Basic chat functionality",
                                  color: Colors.white,
                                  fontSize: 11.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                                SizedBox(
                                  height: 60.h,
                                  //  color: Colors.brown,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      SizedBox(
                                        height: 55.h,
                                        //   color: Colors.brown,
                                        child: TextWidget(
                                          text: "\$0",
                                          color: Colors.white,
                                          fontSize: 30.sp,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 30.h,
                                        // color: Colors.amber,
                                        child: TextWidget(
                                          text: "/mo",
                                          color: Colors.white,
                                          fontSize: 11.sp,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 3.h,
                                  //  color: Colors.amberAccent,
                                ),
                                SizedBox(
                                  height: 20.h,
                                  //  color: Colors.brown,
                                  child: TextWidget(
                                    text: "Free Forever",
                                    color: Colors.white,
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Container(
                                  height: 40.h,
                                  //  color: Colors.amberAccent,
                                ),
                                Divider(
                                  color:
                                      const Color.fromARGB(255, 151, 151, 143),
                                  thickness: 1.6.sp,
                                ),
                                Container(
                                  height: 30.h,
                                  // color: Colors.amberAccent,
                                ),
                                SizedBox(
                                  height: 40.h,
                                  // color: Colors.amberAccent,
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.check_circle,
                                        color: Colors.white,
                                        size: 18.sp,
                                      ),
                                      Container(
                                        width: 20.w,
                                        //  color: Colors.amberAccent,
                                      ),
                                      TextWidget(
                                        text:
                                            "Only available when demand is low",
                                        color: Colors.white,
                                        fontSize: 10.sp,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 8.h,
                                  // color: Colors.amberAccent,
                                ),
                                SizedBox(
                                  height: 40.h,
                                  // color: Colors.amberAccent,
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.check_circle,
                                        color: Colors.white,
                                        size: 18.sp,
                                      ),
                                      Container(
                                        width: 20.w,
                                        //  color: Colors.amberAccent,
                                      ),
                                      TextWidget(
                                        text: "Slow response speed",
                                        color: Colors.white,
                                        fontSize: 10.sp,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 8.h,
                                  // color: Colors.amberAccent,
                                ),
                                SizedBox(
                                  height: 40.h,
                                  // color: Colors.amberAccent,
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.check_circle,
                                        color: Colors.white,
                                        size: 18.sp,
                                      ),
                                      Container(
                                        width: 20.w,
                                        //  color: Colors.amberAccent,
                                      ),
                                      TextWidget(
                                        text: "New feature update are slower",
                                        color: Colors.white,
                                        fontSize: 10.sp,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 8.h,
                                  // color: Colors.amberAccent,
                                ),
                                SizedBox(
                                  height: 40.h,
                                  // color: Colors.amberAccent,
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.check_circle,
                                        color: Colors.white,
                                        size: 18.sp,
                                      ),
                                      Container(
                                        width: 20.w,
                                        //  color: Colors.amberAccent,
                                      ),
                                      TextWidget(
                                        text: "30 day history",
                                        color: Colors.white,
                                        fontSize: 10.sp,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 8.h,
                                  // color: Colors.amberAccent,
                                ),
                                SizedBox(
                                  height: 40.h,
                                  // color: Colors.amberAccent,
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.check_circle,
                                        color: Colors.white,
                                        size: 20.sp,
                                      ),
                                      Container(
                                        width: 20.w,
                                        //  color: Colors.amberAccent,
                                      ),
                                      TextWidget(
                                        text: "Up to 1000 message/me",
                                        color: Colors.white,
                                        fontSize: 10.sp,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      3,
                      (index) => AnimatedContainer(
                        height: index == i ? 9.w : 10.w,
                        width: index == i ? 25.w : 10.w,
                        margin: EdgeInsets.symmetric(horizontal: 5.w),
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(index == i ? 30.r : 100.r),
                          color: index == i ? null : whiteColor,
                          border: Border.all(
                              color: index == i
                                  ? primaryColor
                                  : const Color(0xffC8C8C8),
                              width: 2.w),
                        ),
                        duration: const Duration(milliseconds: 300),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
