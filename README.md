# Flutter Bottom Navy Bar

A customizable and lightweight bottom navigation bar for Flutter with support for badges, controller-based navigation, customizable icon size, label styles, and disabled tabs.

This package helps developers easily build a modern bottom navigation system with flexible configuration.

---

## ✨ Features

* Controller-based navigation
* Badge / notification support
* Custom icon size
* Custom label styles (selected / unselected)
* Ripple effect using InkWell
* Item spacing customization
* Disable specific navigation items

---
## demo


https://github.com/user-attachments/assets/748efde9-d0d5-4b45-b1a7-816a1bd23528

---

## 📦 Installation

Add the dependency to your **pubspec.yaml**

```yaml
dependencies:
  flutter_bottom_navy_bar:
    path: ../
```

Then run:

```
flutter pub get
```

---

## 🚀 Usage

Import the package:

```dart
import 'package:flutter_bottom_navy_bar/flutter_bottom_navy_bar.dart';
```

Create a controller:

```dart
final controller = BottomNavyController();
```

Use the navigation bar in your Scaffold:

```dart
BottomNavyBar(
  controller: controller,
  iconSize: 26,
  itemSpacing: 24,
  backgroundColor: Colors.white,

  selectedLabelStyle: const TextStyle(
    color: Colors.blue,
    fontWeight: FontWeight.bold,
  ),

  unselectedLabelStyle: const TextStyle(
    color: Colors.grey,
  ),

  items: [
    BottomNavyBarItem(
      icon: Icons.home,
      title: "Home",
      activeColor: Colors.blue,
    ),

    BottomNavyBarItem(
      icon: Icons.mail,
      title: "Messages",
      activeColor: Colors.red,
      badgeCount: 3,
    ),

    BottomNavyBarItem(
      icon: Icons.person,
      title: "Profile",
      activeColor: Colors.green,
      enabled: true,
    ),
  ],
)
```

---

## 📱 Example

```dart
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final controller = BottomNavyController();

  final pages = [
    const Center(child: Text("Home Page")),
    const Center(child: Text("Messages Page")),
    const Center(child: Text("Profile Page")),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: AnimatedBuilder(
        animation: controller,
        builder: (context, _) {
          return pages[controller.index];
        },
      ),

      bottomNavigationBar: BottomNavyBar(
        controller: controller,
        iconSize: 26,
        itemSpacing: 24,
        backgroundColor: Colors.white,

        items: [
          BottomNavyBarItem(
            icon: Icons.home,
            title: "Home",
            activeColor: Colors.blue,
          ),

          BottomNavyBarItem(
            icon: Icons.mail,
            title: "Messages",
            activeColor: Colors.red,
            badgeCount: 5,
          ),

          BottomNavyBarItem(
            icon: Icons.person,
            title: "Profile",
            activeColor: Colors.green,
          ),
        ],
      ),
    );
  }
}
```

---

## ⚙️ Parameters

| Parameter            | Description                            |
| -------------------- | -------------------------------------- |
| controller           | Controls the selected navigation index |
| items                | List of BottomNavyBarItem              |
| iconSize             | Icon size of navigation items          |
| itemSpacing          | Horizontal spacing between items       |
| backgroundColor      | Background color of navigation bar     |
| selectedLabelStyle   | Text style for selected item           |
| unselectedLabelStyle | Text style for unselected item         |

---

## 📦 BottomNavyBarItem

| Property    | Description                       |
| ----------- | --------------------------------- |
| icon        | Navigation icon                   |
| title       | Label text                        |
| activeColor | Active icon color                 |
| badgeCount  | Notification badge count          |
| enabled     | Enable or disable navigation item |

---

## 🎯 Preview

Example navigation layout:

```
🏠 Home    ✉ Messages 🔴5    👤 Profile
```


## 📄 License
MIT License

Copyright (c) 2026 Excelsior Technology

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

