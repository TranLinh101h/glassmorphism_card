## Glassmorphism Card

A single card with glassmorphism style that have header (left, center, right Widget)
separated with body (wrap a child content) by deeper color

![](example_card.png)

## Features

- Preconfigured UI with customizable styling
- Card color can be changed
- Completely customizable,change Container's opacity,blur,border size,radius etc.

## Usage

Add this in to your pubspec.yaml:

```
glassmorphismcard: ^0.0.5
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
