import 'package:flame/components.dart';
import 'package:flame/experimental.dart';
import 'package:flame/input.dart';
import 'package:flutter/material.dart';

class RunButton extends HudButtonComponent {
  RunButton({
    required button,
    buttonDown,
    EdgeInsets? margin,
    Vector2? position,
    Vector2? size,
    Anchor anchor = Anchor.center,
    onPressed,
  }) : super(
            button: button,
            buttonDown: buttonDown,
            margin: margin,
            position: position,
            size: size ?? button.size,
            anchor: anchor,
            onPressed: onPressed);

  bool buttonPressed = false;

  @override
  bool onTapDown(TapDownEvent event) {
    super.onTapDown(event);
    buttonPressed = true;
    return true;
  }

  @override
  bool onTapUp(TapUpEvent event) {
    super.onTapUp(event);
    buttonPressed = false;
    return false;
  }

  @override
  bool onTapCancel(event) {
    super.onTapCancel(event);
    buttonPressed = false;
    return true;
  }
}
