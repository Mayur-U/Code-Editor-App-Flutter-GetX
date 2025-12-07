📘 Code Editor App (Flutter + GetX)

A simple mobile code editor built using Flutter and GetX, created as part of an internship assignment.

The app allows users to:

Write code

Run it with simulated output

Automatically fix basic mistakes

Ask for help using a built-in help panel

✨ Features
📝 Code Editor

Built using code_text_field

Clean monospace editor

Live text updates using GetX

Simple, responsive UI

▶️ Run (Simulated Execution)

The Run button simulates output using simple rules:

✔ Supported:
Input	Output
print("Hello")	Hello
missing )	Syntax error: missing ')'
missing }	Syntax error: missing '}'
contains error	Simulated error detected.
empty input	No code to run.
anything else	Program executed successfully.

This meets the requirement: “show output or errors in a console”.

🧹 Auto-Fix

The Auto Fix button improves code formatting:

Adds missing semicolons

Cleans extra whitespace

Formats indentation consistently

(Note: Auto-Fix does not insert missing parentheses — as per your final working version.)

💬 Help Panel

A help icon opens a side panel where users can ask questions.

The help system uses keyword matching to respond.

Example keywords:

run → how to run code

fix → about auto-fix

error → troubleshooting

indent → formatting info

📂 Project Structure
lib/
 ├── main.dart               # App entry point
 ├── editor_page.dart        # UI for editor, console, buttons
 ├── editor_controller.dart  # Run logic + Auto-Fix trigger
 ├── help_controller.dart    # Keyword help system
 ├── autofix_service.dart    # Auto-Fix formatting logic
 └── app_bindings.dart       # GetX dependency injection

🛠️ Tech Stack

Flutter 3.x

Dart 3.x

GetX (state management + DI)

code_text_field

highlight

🚀 Running the App
1️⃣ Install dependencies
flutter pub get

2️⃣ Run on a device
flutter run

3️⃣ Build an APK
flutter build apk --release

🧪 Example Usage
Run Test

Input:

print("Hello World")


Output:

Hello World

Syntax Error Test

Input:

print("Hello"


Output:

Syntax error: missing ')'

Auto-Fix Test

Input:

print("hi"



After Auto-Fix:

Output : hi