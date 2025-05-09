import 'package:flutter/material.dart';

import '../globals/app_assets.dart';

class ProfileAnimation extends StatefulWidget {
  const ProfileAnimation({Key? key}) : super(key: key);

  @override
  ProfileAnimationState createState() => ProfileAnimationState();
}

class ProfileAnimationState extends State<ProfileAnimation>
    with TickerProviderStateMixin {
  late final AnimationController _controller;
  late Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 3))
          ..repeat(reverse: true);

    _animation = Tween(begin: const Offset(0, 0.05), end: const Offset(0, 0))
        .animate(_controller);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _animation,
      child: ClipOval(
        child: Image.asset(
          AppAssets.profile1,
          width: 330,
          height: 330,
          fit: BoxFit.cover,
          errorBuilder: (context, error, stackTrace) => Container(
            width: 290,
            height: 290,
            color: Colors.grey[300],
            child: const Icon(Icons.error, size: 40, color: Colors.red),
          ),
        ),
      ),
    );
  }
}
