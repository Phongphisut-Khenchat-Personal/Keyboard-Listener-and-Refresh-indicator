![Flutter Logo](https://img.icons8.com/color/48/flutter.png)
# 🛠️ Flutter Directional Text App
An application that displays text and icons based on the direction of arrow key presses, decorated with surrounding icons
---
## ✨ Features
- 👉 Display text and arrow icons according to keyboard arrow key inputs (Left, Right, Up, Down)
- 🌟 Beautiful decorative icons in 4 positions (Star, ❤️ Heart, 👍 Thumbs Up, 👎 Thumbs Down)
---
## 🌈 Icon Customization Guide
### 1. 💡 Main Arrow Icon Customization
```dart
Icon(
  direction == "Left" ? Icons.arrow_left :
  direction == "Right" ? Icons.arrow_right :
  direction == "Up" ? Icons.arrow_upward :
  direction == "Down" ? Icons.arrow_downward : Icons.arrow_forward,
  size: 100,
  color: Colors.blue,
  // Add shadow effect
  shadows: [
    Shadow(
      blurRadius: 10.0,
      color: Colors.blue.withOpacity(0.5),
      offset: Offset(2.0, 2.0),
    ),
  ],
)
```
### 2. 💧 Decorative Icons Customization
Enhance the beauty of all 4 decorative icons using `Container` and various effects:
```dart
Container(
  decoration: BoxDecoration(
    // Add glow effect
    boxShadow: [
      BoxShadow(
        color: Colors.yellow.withOpacity(0.3),
        spreadRadius: 2,
        blurRadius: 7,
      ),
    ],
  ),
  child: Icon(
    Icons.star,
    size: 50,
    color: Colors.yellow,
  ),
)
```
### 3. 🔄 Adding Animations
Add animations to icons using `AnimatedContainer` or `AnimatedPositioned`:
```dart
AnimatedPositioned(
  duration: Duration(milliseconds: 300),
  curve: Curves.easeInOut,
  top: 150,
  left: 50,
  child: Icon(
    Icons.star,
    size: 50,
    color: Colors.yellow,
  ),
)
```
### 4. 🌟 Color Customization
Recommended beautiful and harmonious color combinations:
- ➡️ Arrow Icon: `Colors.blue[600]`
- 🌟 Star: `Color(0xFFFFD700)` (Golden)
- ❤️ Heart: `Color(0xFFFF4081)` (Vibrant Pink)
- 👍 Thumbs Up: `Color(0xFF4CAF50)` (Vibrant Green)
- 👎 Thumbs Down: `Color(0xFF9C27B0)` (Vibrant Purple)
---
## 🚀 Installation
1. Clone the project
   ```bash
   git clone https://github.com/Phongphisut-Khenchat-Personal/Keyboard-Listener-and-Refresh-indicator.git
   ```
2. Run command:
   ```bash
   flutter pub get
   ```
3. Run the application:
   ```bash
   flutter run
   ```
---
## 📊 Minimum Requirements
- Flutter SDK: 2.0.0 or higher
- Dart SDK: 2.12.0 or higher
---
## 🔍 Usage
1. Open the application
2. Press arrow keys on keyboard (Left, Right, Up, Down)
3. Icons and text will change according to the pressed direction
---
## 🔄 Future Developments
- Add particle effects when pressing buttons
- Add sound effects
- Add dark/light theme modes
- Add touch screen support
