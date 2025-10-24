import 'dart:math';
import 'package:flutter/material.dart';

/// A reusable 3D flip card widget that creates a realistic card flip animation.
/// 
/// The card can be flipped by tapping or programmatically. It uses perspective
/// transformations to create a 3D effect during the flip.
class FlipCard3D extends StatefulWidget {
  const FlipCard3D({
    required this.front,
    required this.back,
    this.flipOnTap = true,
    this.autoFlipDuration,
    this.flipDuration = const Duration(milliseconds: 600),
    this.onFlipComplete,
    super.key,
  });

  /// Widget to display on the front of the card
  final Widget front;

  /// Widget to display on the back of the card
  final Widget back;

  /// Whether tapping the card should trigger a flip
  final bool flipOnTap;

  /// Optional duration to wait before auto-flipping the card on first render
  final Duration? autoFlipDuration;

  /// Duration of the flip animation
  final Duration flipDuration;

  /// Callback when flip animation completes
  final VoidCallback? onFlipComplete;

  @override
  State<FlipCard3D> createState() => FlipCard3DState();
}

class FlipCard3DState extends State<FlipCard3D>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  bool _showFront = true;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: widget.flipDuration,
      vsync: this,
    );

    // Use a curve for more realistic motion (ease-in-out)
    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOutCubic,
    );

    _animation.addStatusListener((status) {
      if (status == AnimationStatus.completed ||
          status == AnimationStatus.dismissed) {
        widget.onFlipComplete?.call();
      }
    });

    // Auto-flip if specified
    if (widget.autoFlipDuration != null) {
      Future.delayed(widget.autoFlipDuration!, () {
        if (mounted) flip();
      });
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  /// Programmatically flip the card
  void flip() {
    if (_showFront) {
      _controller.forward();
    } else {
      _controller.reverse();
    }
    setState(() => _showFront = !_showFront);
  }

  /// Toggle flip state
  void toggle() => flip();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.flipOnTap ? flip : null,
      child: AnimatedBuilder(
        animation: _animation,
        builder: (context, child) {
          // Calculate rotation angle (0 to π)
          final angle = _animation.value * pi;
          
          // Determine which side to show based on rotation
          final showingFront = angle < pi / 2;

          // Apply perspective and rotation transformations
          return Transform(
            alignment: Alignment.center,
            transform: Matrix4.identity()
              ..setEntry(3, 2, 0.001) // Perspective
              ..rotateY(angle),
            child: showingFront
                ? widget.front
                : Transform(
                    alignment: Alignment.center,
                    transform: Matrix4.identity()..rotateY(pi),
                    child: widget.back,
                  ),
          );
        },
      ),
    );
  }
}
