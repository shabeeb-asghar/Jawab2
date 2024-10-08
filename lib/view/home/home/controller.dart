import 'package:get/get.dart';

class HomeController extends GetxController {
  static HomeController get to => Get.find();
  Rx<int> selectedItemPosition = 0.obs;
  Rx<int> tabIndex = 10.obs;
  Rx<bool> dialogueopen = false.obs;

  void updatedialogue(bool value) {
    dialogueopen.value = value;
  }

  // final ValueNotifier bottomsheetIndex = ValueNotifier(0);
  List<TabModel> tabsList = [
    TabModel(name: "AI Assistant", image: "images/ai.png"),
    TabModel(name: "AI Translator", image: "images/langues.png"),
    TabModel(name: "Dictionary", image: "images/dictionnaire.png"),
    TabModel(name: "Video to Text", image: "images/youtube.png"), 
    TabModel(name: "Analyze PDF", image: "images/pdf.png"),
  ];

  //  List<TabModel> previoustabsList = [
  //   TabModel(name: "AI Translator", image: "images/langues.png"),
  //   TabModel(name: "Dictionary", image: "images/dictionnaire.png"),
  //   TabModel(name: "Video to Text", image: "images/youtube.png"),
  //   TabModel(name: "Image to Text", image: "images/camera.png"),
  //   TabModel(name: "Conjugate", image: "images/livre.png"),
  //   TabModel(name: "AI Assistant", image: "images/ai.png"),
  // ];
}

class TabModel {
  String? name;
  String? image;

  TabModel({required this.name, required this.image});
}
