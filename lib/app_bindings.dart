import 'package:get/get.dart';
import 'editor_controller.dart';
import 'help_controller.dart';

class AppBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(EditorController());
    Get.put(HelpController());
  }
}
