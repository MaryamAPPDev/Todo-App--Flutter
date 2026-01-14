#  A To-Do list App with Provider (Flutter)

A clean and beautiful **Flutter To-Do list App** built using `Provider` for state management. This app includes a polished **authentication flow, dashboard, task management screens**, and modern UI design – all structured with clean architecture.

##  Features

- ✅ Beautiful splash screen with animated transition
- 👤 Signup screen with name, email & password
- 🏠 Modern dashboard with gradient cards
- 📋 Add/Edit/View Tasks with custom fields
- 🎯 Task tagging with priority & due date
- ☑️ Mark as completed / delete task
- 🔄 State management using `Provider`
- 🎨 Material 3 styling with gradients & rounded corners



##  Screenshots

<p float="left">
  <img src="screenshots/signup.png" width="250" />
  <img src="screenshots/dashboard.png" width="250" />
  <img src="screenshots/add_task.png" width="250" />
</p>

<p float="left">
  <img src="screenshots/home.png" width="250" />
  <img src="screenshots/task_details.png" width="250" />
</p>

---

## 📂 Folder Structure

```bash
lib/
├── main.dart
├── model/
│   └── task_model.dart
├── provider/
│   └── task_provider.dart
├── screens/
│   ├── splash_screen.dart
│   ├── signup_screen.dart
│   ├── dashboard_screen.dart
│   ├── home_screen.dart
│   ├── add_task_screen.dart
│   ├── edit_task_screen.dart
│   └── task_detail_screen.dart
├── widgets/
│   ├── task_tile.dart
│   └── custom_input_field.dart
└── utils/
    └── theme.dart
    └── date_utils.dart
    
```

---

## 🛠️ Packages Used

```yaml
dependencies:
  flutter:
    sdk: flutter
  provider: ^6.1.5+1
  uuid: ^4.5.2

```

---

##  Notes

- No backend or Firebase used – local state only
- Fully extendable to use Firebase, local DB, etc.
- App works offline – uses `Provider` to manage app-wide state

