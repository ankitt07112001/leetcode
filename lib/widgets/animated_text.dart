import 'package:flutter/material.dart';
import 'dart:async';

class AnimatedText extends StatefulWidget {
  final List<String> texts;
  final TextStyle? style;
  final Duration switchDuration;
  final Duration fadeDuration;

  const AnimatedText({
    super.key,
    required this.texts,
    this.style,
    this.switchDuration = const Duration(seconds: 3),
    this.fadeDuration = const Duration(milliseconds: 500),
  });

  @override
  State<AnimatedText> createState() => _AnimatedTextState();
}

class _AnimatedTextState extends State<AnimatedText> {
  late int _currentIndex;
  late Timer _timer;
  double _opacity = 1.0;
  bool _isChanging = false;

  @override
  void initState() {
    super.initState();
    _currentIndex = 0;
    _startTimer();
  }

  void _startTimer() {
    _timer = Timer.periodic(widget.switchDuration, (timer) {
      _changeText();
    });
  }

  void _changeText() async {
    if (_isChanging) return;
    _isChanging = true;
    
    // Fade out
    setState(() {
      _opacity = 0.0;
    });
    
    await Future.delayed(widget.fadeDuration);
    
    // Change text
    setState(() {
      _currentIndex = (_currentIndex + 1) % widget.texts.length;
    });
    
    // Fade in
    setState(() {
      _opacity = 1.0;
    });
    
    _isChanging = false;
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: _opacity,
      duration: widget.fadeDuration,
      child: Text(
        widget.texts[_currentIndex],
        style: widget.style,
        textAlign: TextAlign.center,
      ),
    );
  }
}
