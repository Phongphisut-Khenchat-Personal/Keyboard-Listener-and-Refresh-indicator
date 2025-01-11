![Flutter Logo](https://img.icons8.com/color/48/flutter.png)

# 🛠️ Flutter Directional Text App

แอพพลิเคชั่นแสดงข้อความและไอคอนตามทิศทางที่ผู้ใช้กดปุ่มลูกศร โดยมีไอคอนประดับตกแต่งโดยรอบ

---

## ✨ คุณสมบัติ
- 👉 แสดงข้อความและไอคอนลูกศรตามทิศทางที่ผู้ใช้กดแป้นพิมพ์ (ซ้าย, ขวา, บน, ล่าง)
- 🌟 มีไอคอนตกแต่งที่สวยงาม 4 ตำแหน่ง (ดาว, ❤️ หัวใจ, 👍 ชอบ, 👎 ไม่ชอบ)

---

## 🌈 การปรับแต่งไอคอนให้สวยงาม

### 1. 💡 การปรับแต่งไอคอนลูกศรหลัก
```dart
Icon(
  direction == "Left" ? Icons.arrow_left :
  direction == "Right" ? Icons.arrow_right :
  direction == "Up" ? Icons.arrow_upward :
  direction == "Down" ? Icons.arrow_downward : Icons.arrow_forward,
  size: 100,
  color: Colors.blue,
  // เพิ่มเพิ่มเฟกต์เฌา
  shadows: [
    Shadow(
      blurRadius: 10.0,
      color: Colors.blue.withOpacity(0.5),
      offset: Offset(2.0, 2.0),
    ),
  ],
)
```

### 2. 💧 การปรับแต่งไอคอนประดับ
สามารถเพิ่มความสวยงามให้กับไอคอนประดับทั้ง 4 ตำแหน่งด้วยการใช้ `Container` และเพิ่มเอฟเฟกต์ต่างๆ:

```dart
Container(
  decoration: BoxDecoration(
    // เพิ่มเพิ่มเฟกต์เรืองแสง
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

### 3. 🔄 การเพิ่มแอนิเมชั่น
สามารถเพิ่มแอนิเมชั่นให้กับไอคอนโดยใช้ `AnimatedContainer` หรือ `AnimatedPositioned`:

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

### 4. 🌟 การปรับแต่งสี
แนะนำให้ใช้โทนสีที่สวยงามและเข้ากัน:
- ➡️ ไอคอนลูกศร: `Colors.blue[600]`
- 🌟 ดาว: `Color(0xFFFFD700)` (สีทอง)
- ❤️ หัวใจ: `Color(0xFFFF4081)` (สีชมพูสด)
- 👍 ชอบ: `Color(0xFF4CAF50)` (สีเขียวสด)
- 👎 ไม่ชอบ: `Color(0xFF9C27B0)` (สีม่วงสด)

---

## 🚀 การติดตั้ง
1. Clone โปรเจค
   ```bash
   git clone https://github.com/Phongphisut-Khenchat-Personal/Keyboard-Listener-and-Refresh-indicator.git
   ```
2. รันคำสั่ง:
   ```bash
   flutter pub get
   ```
3. รันแอพพลิเคชั่น:
   ```bash
   flutter run
   ```

---

## 📊 ข้อกำหนดขั้นต่ำ
- Flutter SDK: 2.0.0 หรือสูงกว่า
- Dart SDK: 2.12.0 หรือสูงกว่า

---

## 🔍 การใช้งาน
1. เปิดแอพพลิเคชั่น
2. กดปุ่มลูกศรบนคีย์บอร์ด (ซ้าย, ขวา, บน, ล่าง)
3. ไอคอนและข้อความจะเปลี่ยนตามทิศทางที่กด

---

## 🔄 การพัฒนาต่อยอด
- เพิ่มเอฟเฟกต์พาร์ติเคิลเมื่อกดปุ่ม
- เพิ่มเสียงเอฟเฟกต์
- เพิ่มโหมดธีมมืด/สว่าง
- เพิ่มการรองรับการสัมผัสหน้าจอ

