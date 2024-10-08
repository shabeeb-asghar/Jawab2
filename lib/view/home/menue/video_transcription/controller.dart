import 'package:get/get.dart';

class VideoTranscriptionController extends GetxController {
  static VideoTranscriptionController get to => Get.find();

  Rx<bool> isEmpty = true.obs;
  Rx<String> transcriptStatus = "empty".obs;
  void updatetext(bool value) {
    isEmpty.value = value;
  }

  void updatetranscriptStatus(String value) {
    transcriptStatus.value = value;
    if (value == "run") {
      Future.delayed(const Duration(seconds: 5), () {
        transcriptStatus.value = "complete";
      });
    }
  }
}
