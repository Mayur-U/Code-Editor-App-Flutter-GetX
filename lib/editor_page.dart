import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:code_text_field/code_text_field.dart';
import 'package:highlight/languages/dart.dart';

import 'editor_controller.dart';
import 'help_controller.dart';

class EditorPage extends StatefulWidget {
  @override
  State<EditorPage> createState() => _EditorPageState();
}

class _EditorPageState extends State<EditorPage> {
  late CodeController codeCtrl;

  @override
  void initState() {
    super.initState();

    final editor = Get.find<EditorController>();

    codeCtrl = CodeController(
      text: "",
      language: dart,
    );

    // Listen to editor text updates
    codeCtrl.addListener(() {
      editor.code.value = codeCtrl.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    final editor = Get.find<EditorController>();
    final help = Get.find<HelpController>();

    return Scaffold(
      appBar: AppBar(
        title: Text("Code Editor"),
        actions: [
          IconButton(
            icon: Icon(Icons.help_outline),
            onPressed: () => help.showHelpPanel(context),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: CodeField(
              controller: codeCtrl,
              textStyle: TextStyle(fontFamily: "monospace"),
            ),
          ),

          SizedBox(height: 10),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: editor.runCode,
                child: Text("Run"),
              ),
              ElevatedButton(
                onPressed: editor.autoFix,
                child: Text("Auto Fix"),
              ),
            ],
          ),

          SizedBox(height: 10),

          Expanded(
            child: Container(
              width: double.infinity,
              color: Colors.black,
              padding: EdgeInsets.all(12),
              child: Obx(() => Text(
                editor.output.value,
                style: TextStyle(color: Colors.greenAccent),
              )),
            ),
          ),
        ],
      ),
    );
  }
}
