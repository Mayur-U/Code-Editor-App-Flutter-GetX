import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HelpController extends GetxController {
  void showHelpPanel(BuildContext context) {
    final TextEditingController query = TextEditingController();

    showModalBottomSheet(
      context: context,
      builder: (_) {
        return Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("Ask for help"),
              TextField(controller: query),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                  respond(query.text);
                },
                child: Text("Get Help"),
              )
            ],
          ),
        );
      },
    );
  }

  void respond(String q) {
    String msg = "No help available.";

    if (q.contains("run")) msg = "Press the Run button to execute code.";
    else if (q.contains("fix")) msg = "Auto Fix cleans indentation & semicolons.";
    else if (q.contains("error")) msg = "Check missing quotes or brackets.";
    else if (q.contains("indent")) msg = "Use Auto Fix to reformat your code.";

    Get.snackbar("Help", msg);
  }
}
