## Glassmorphism Card
A single card with glassmorphism style that have header (left, center, right Widget) 
separated with body (wrap a child content) by deeper color

![](example_card.png)

## Usage

Import it
```dart
import 'package:glassmorphismcard/glassmorphism_card.dart';
```

Example

```dart
GlassmorphismCard(
  backgroundColor: Colors.blue,
  title: Padding(
    padding: const EdgeInsets.only(left: 15),
    child: Text(
      'Hello world',
      style: TextStyle(
          color: Colors.white,
          fontSize: 30,
          fontWeight: FontWeight.bold
      ),
    ),
  ),
  body: Align(
      alignment: Alignment.bottomRight,
      child: Image.network(img),
  ),
),
```

