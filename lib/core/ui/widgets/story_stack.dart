import 'package:facebook/core/ui/colors/app_colors.dart';
import 'package:flutter/material.dart';

class StoryStack extends StatelessWidget {
  const StoryStack({
    super.key,
    required this.storyAvatar,
    required this.storyImg,
  });

  final String storyAvatar;
  final String storyImg;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadiusGeometry.circular(16),
          child: Image.asset(
            storyImg,
            height: 178,
            width: 112,
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(4),
          child: Container(
            padding: const EdgeInsets.all(2),
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: AppColors.blue,
              borderRadius: BorderRadius.circular(50),
            ),
            child: ClipOval(child: Image.asset(storyAvatar, fit: BoxFit.cover)),
          ),
        ),
      ],
    );
  }
}
