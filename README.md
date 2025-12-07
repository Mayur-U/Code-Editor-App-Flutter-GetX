# 📘 Code Editor App (Flutter + GetX)

![Flutter](https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white)
![Dart](https://img.shields.io/badge/Dart-0175C2?style=for-the-badge&logo=dart&logoColor=white)
![GetX](https://img.shields.io/badge/State-GetX-purple?style=for-the-badge)

A simple mobile code editor built using **Flutter** and **GetX**, created as part of an internship assignment. The app focuses on a clean UI, simulated code execution, and intelligent help features.

---

## ✨ Features

### 📝 Code Editor
* Built using `code_text_field` for syntax highlighting.
* Clean, monospace editor environment.
* **Reactive UI:** Live text updates managed by GetX.
* Fully responsive design.

### ▶️ Run (Simulated Execution)
The "Run" button simulates a compiler/interpreter output based on predefined logic rules. This meets the assignment requirement to "show output or errors in a console."

| Scenario | Input | Output |
| :--- | :--- | :--- |
| **Standard Print** | `print("Hello")` | `Hello` |
| **Missing Bracket** | `missing )` | `Syntax error: missing ')'` |
| **Missing Brace** | `missing }` | `Syntax error: missing '}'` |
| **Generic Error** | `contains error` | `Simulated error detected.` |
| **Empty** | *(empty)* | `No code to run.` |
| **Default** | *(Anything else)* | `Program executed successfully.` |

### 🧹 Auto-Fix
The Auto-Fix button automatically improves code formatting and cleans up syntax:
* ✅ Adds missing semicolons.
* ✅ Cleans extra whitespace.
* ✅ Formats indentation consistently.

### 💬 Help Panel
A side panel that provides context-aware help using keyword matching:
* **"run"** → Explains how to execute code.
* **"fix"** → Explains the auto-fix functionality.
* **"error"** → Provides troubleshooting tips.
* **"indent"** → Explains formatting rules.

---

## 🛠️ Tech Stack

* **Framework:** Flutter 3.x
* **Language:** Dart 3.x
* **State Management:** GetX (State + Dependency Injection)
* **Packages:**
    * `code_text_field`
    * `highlight`

---

## 📂 Project Structure

```text
lib/
├── main.dart              # App entry point
├── editor_page.dart       # UI for editor, console, buttons
├── editor_controller.dart # Run logic + Auto-Fix trigger
├── help_controller.dart   # Keyword help system
├── autofix_service.dart   # Auto-Fix formatting logic
└── app_bindings.dart      # GetX dependency injection
```

---

## 🚀 Getting Started

Follow these steps to run the project locally.

### 1️⃣ Install Dependencies
```bash
flutter pub get
```

### 2️⃣ Run on Device
```bash
flutter run
```

### 3️⃣ Build APK (Release)
```bash
flutter build apk --release
```

---

## 🧪 Example Usage

**1. Run Test**
> **Input:** `print("Hello World")`
>
> **Output:** `Hello World`

**2. Syntax Error Test**
> **Input:** `print("Hello"`
>
> **Output:** `Syntax error: missing ')'`

**3. Auto-Fix Test**
> **Input:** `print("hi"`
>
> **Action:** Click Auto-Fix
>
> **Result:** Code updates to `print("hi");` and output runs successfully.
