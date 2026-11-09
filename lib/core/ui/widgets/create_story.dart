import 'package:facebook/core/strings/strings.dart';
import 'package:facebook/core/ui/colors/app_colors.dart';
import 'package:flutter/material.dart';

class CreateStory extends StatelessWidget {
  const CreateStory({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
              child: Image.asset(Strings.profileAvatar, width: 112),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12),
              child: Text(
                'Create a\nStory',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 12,
                  color: AppColors.black,
                  fontWeight: FontWeight(650),
                ),
              ),
            ),
          ],
        ),
        Positioned(
          top: 125,
          left: 43,
          child: Container(
            padding: const EdgeInsets.all(0.5),
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(50),
            ),
            child: Image.asset(Strings.icPlusCircle),
          ),
        ),
      ],
    );
  }
}
