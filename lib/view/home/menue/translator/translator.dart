import 'package:alxza/view/home/home/controller.dart';
import 'package:alxza/view/home/menue/translator/controller.dart';
import 'package:alxza/widget/button.dart';
import 'package:alxza/widget/colors.dart';
import 'package:alxza/widget/confirmation_dialogue.dart';
import 'package:alxza/widget/custom_container.dart';
import 'package:alxza/widget/text_widget.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:share_plus/share_plus.dart';

class TranslateScreen extends StatefulWidget {
  const TranslateScreen({super.key});

  @override
  State<TranslateScreen> createState() => _TranslateScreenState();
}

class _TranslateScreenState extends State<TranslateScreen>
// with WidgetsBindingObserver
{
  // final tooltipController = JustTheController();
  @override
  void initState() {
    // SchedulerBinding.instance.addPostFrameCallback((_) {
    //   tooltipController.showTooltip();
    // });
    // WidgetsBinding.instance.addObserver(this);
    TranslatorController.to.ismicOpen.value = false;
    TranslatorController.to.isEmpty.value = true;
    TranslatorController.to.initspeech();
    super.initState();
  }

  @override
  void dispose() {
    TranslatorController.to.textEditingController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      body: KeyboardVisibilityBuilder(
          builder: (context, child, isKeyboardVisible) {
        return GetBuilder<TranslatorController>(builder: (obj) {
          return Obx(() {
            // log("hii $isKeyboardVisible");

            return SizedBox(
              height: ScreenUtil().screenHeight,
              width: ScreenUtil().screenWidth,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      color: Colors.white,
                      height: 50.h,
                    ),
                    Container(
                      color: Colors.white,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.w),
                        child: Row(
                          children: [
                            CustomContainer(
                              onTap: () {
                                HomeController.to.selectedItemPosition.value =
                                    0;
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
                            ),
                            const Spacer(),
                            Center(
                              child: TextWidget(
                                text: "AI Translator",
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const Spacer(),
                            // JustTheTooltip(
                            //   borderRadius: BorderRadius.circular(7.r),
                            //   tailLength: 5,
                            //   margin: const EdgeInsets.all(0),
                            //   preferredDirection: AxisDirection.down,
                            //   tailBaseWidth: 15.w,
                            //   controller: tooltipController,
                            //   backgroundColor: Colors.white,
                            //   offset: 0,
                            //   content: Padding(
                            //     padding: EdgeInsets.symmetric(
                            //         horizontal: 15.w, vertical: 3.h),
                            //     child: TextWidget(
                            //       text: "100 000 / 250 000",
                            //       fontSize: 12.sp,
                            //       color: primaryColor,
                            //       fontWeight: FontWeight.w500,
                            //     ),
                            //   ),
                            //   child:

                            InkWell(
                              onTap: () {
                                // tooltipController.showTooltip();
                                Get.dialog(CreditDialogue(
                                  onYesBtnClick: () {
                                    Get.back();
                                    HomeController
                                        .to.selectedItemPosition.value = 11;
                                    // Get.to(() => Upgrade_to_pro(),
                                    //     transition: Transition.leftToRight);
                                  },
                                ));
                              },
                              child: Image.asset(
                                "images/token.png",
                                height: 35.h,
                                width: 35.w,
                              ),
                            ),
                            // ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.white,
                      height: 5.h,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color:
                                  Colors.black.withOpacity(0.2), // Shadow color
                              spreadRadius: 0, // Spread radius
                              blurRadius: 2, // Blur radius
                              offset: const Offset(0,
                                  2), // Offset from top to create a shadow from the bottom
                            ),
                          ],
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(13.r),
                              bottomRight: Radius.circular(13.r))),
                      height: isKeyboardVisible ? 310.h : 410.h,
                      width: ScreenUtil().screenWidth,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            new Scrollbar(
                              child: new SingleChildScrollView(
                                scrollDirection: Axis.vertical,
                                reverse: true,
                                child: SizedBox(
                                  height: obj.isEmpty.value
                                      ? null
                                      : isKeyboardVisible
                                          ? 260.h
                                          : 360.h,
                                  child: TextFormField(
                                    onTap: () {
                                      // textEditingController.selection =
                                      //     textEditingController.selection =
                                      //         TextSelection(
                                      //             baseOffset: 0,
                                      //             extentOffset: obj
                                      //                 .textEditingController
                                      //                 .text
                                      //                 .length);
                                    },
                                    onChanged: (v) {
                                      if (v.isNotEmpty) {
                                        if (obj.isEmpty.value) {
                                          obj.updatetext(false);
                                        }
                                      } else {
                                        obj.updatetext(true);
                                      }
                                    },
                                    style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w400,
                                      fontSize: 13.sp,
                                    ),
                                    maxLines: obj.isEmpty.value
                                        ? null
                                        : isKeyboardVisible
                                            ? 11
                                            : 17,
                                    keyboardType: TextInputType.multiline,
                                    controller: obj.textEditingController,
                                    textAlign: TextAlign.justify,
                                    decoration: InputDecoration(
                                      // filled: true,
                                      // fillColor: Colors.black,
                                      border: InputBorder.none,
                                      hintText: obj.ismicOpen.value
                                          ? "Speak now ..."
                                          : obj.speechToText.isListening
                                              ? "Listening..."
                                              : "Enter text ...",
                                      hintStyle: TextStyle(
                                        fontFamily: "Poppins",
                                        fontWeight: FontWeight.w600,
                                        color: textgrey,
                                        fontSize: 20.sp,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            !obj.isEmpty.value || obj.ismicOpen.value
                                ? const SizedBox()
                                : CustomContainer(
                                    onTap: () async {
                                      final clipboardData =
                                          await Clipboard.getData(
                                              Clipboard.kTextPlain);

                                      obj.textEditingController.text =
                                          clipboardData!.text!;
                                      if (obj.textEditingController.text
                                          .isNotEmpty) {
                                        obj.updatetext(false);
                                      }
                                    },
                                    borderRadius: 50.r,
                                    height: 28.h,
                                    width: 91.w,
                                    color: primaryColor,
                                    child: Center(
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Image.asset(
                                            "images/clipboard.png",
                                            height: 15.h,
                                            width: 13.w,
                                          ),
                                          SizedBox(
                                            width: 5.w,
                                          ),
                                          TextWidget(
                                            fontSize: 15.sp,
                                            fontWeight: FontWeight.w400,
                                            text: "Paste",
                                            color: whiteColor,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                            const Spacer(),
                            obj.isEmpty.value
                                ? const SizedBox()
                                : SizedBox(
                                    height: 40.h,
                                    // color: Colors.amber,
                                    child: Row(
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            Clipboard.setData(ClipboardData(
                                                text: obj.textEditingController
                                                    .text));
                                          },
                                          child: SvgPicture.asset(
                                            width: 20.w,
                                            height: 20.h,
                                            "images/copy.svg",
                                          ),
                                        ),
                                        SizedBox(
                                          width: 15.w,
                                        ),
                                        InkWell(
                                          onTap: () {
                                            Share.share(
                                              obj.textEditingController.text,
                                            );
                                          },
                                          child: SvgPicture.asset(
                                            width: 20.w,
                                            height: 20.h,
                                            "images/share.svg",
                                          ),
                                        ),
                                        const Spacer(),
                                        InkWell(
                                          onTap: () {
                                            obj.textEditingController.clear();
                                            obj.updatetext(true);
                                            obj.updatemic(false);
                                          },
                                          child: SvgPicture.asset(
                                              width: 20.w,
                                              height: 20.h,
                                              "images/Delete.svg"),
                                        ),
                                      ],
                                    ),
                                  ),
                            SizedBox(
                              height: 5.h,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: isKeyboardVisible ? 20.h : 30.h,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CustomContainer(
                          borderRadius: 15.r,
                          height: isKeyboardVisible ? 31.h : 50.h,
                          width: 135.w,
                          color: primaryColor.withOpacity(0.2),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10.w),
                            child: Center(
                              child: TextWidget(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500,
                                overflow: TextOverflow.ellipsis,
                                text: "Automatic detect",
                                color: primaryColor,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5.w),
                          child: Image.asset(
                            "images/arrows.png",
                            height: 20.h,
                            width: 20.w,
                          ),
                        ),
                        CustomContainer(
                          borderRadius: 15.r,
                          height: isKeyboardVisible ? 31.h : 50.h,
                          width: 135.w,
                          color: primaryColor.withOpacity(0.2),
                          child: Center(
                            child: TextWidget(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                              text: "Arabic",
                              color: primaryColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: isKeyboardVisible ? 15.h : 20.h,
                    ),
                    isKeyboardVisible
                        ? Button(
                            onTap: () {},
                            height: 36.h,
                            width: 217.w,
                            text: "Start translation",
                            fontWeight: FontWeight.w500,
                            borderRadius: 50.r,
                          )
                        : AvatarGlow(
                            glowColor: primaryColor,
                            animate: obj.ismicOpen.value,
                            glowCount: 1,
                            child: FloatingActionButton.large(
                              onPressed: () {
                                if (obj.isEmpty.value) {
                                  if (obj.ismicOpen.value) {
                                    obj.stopListening();
                                    obj.updatemic(false);
                                  } else {
                                    obj.startListening();
                                    obj.updatemic(true);
                                  }
                                }
                              },
                              materialTapTargetSize:
                                  MaterialTapTargetSize.padded,
                              backgroundColor: primaryColor,
                              shape:
                                  const CircleBorder(), // Set background color to pink
                              child: SvgPicture.asset(
                                obj.isEmpty.value
                                    ? obj.ismicOpen.value
                                        ? "images/stop.svg"
                                        : "images/mic.svg"
                                    : "images/translation.svg",
                                color: obj.isEmpty.value ? null : Colors.white,
                                height: obj.ismicOpen.value ? 25.h : 40.h,
                                width: obj.ismicOpen.value ? 25.w : 30.w,
                              ),
                            ),
                          ),
                    obj.isEmpty.value || isKeyboardVisible
                        ? const SizedBox()
                        : Padding(
                            padding: EdgeInsets.only(top: 5.h),
                            child: TextWidget(
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w400,
                              text: "Translate",
                            ),
                          ),
                  ],
                ),
              ),
            );
          });
        });
      }),
    );
  }
}
