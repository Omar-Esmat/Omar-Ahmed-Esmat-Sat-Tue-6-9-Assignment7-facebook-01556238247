import 'package:facebook/core/strings/strings.dart';
import 'package:facebook/core/ui/colors/app_colors.dart';
import 'package:flutter/material.dart';

class PostBlock extends StatelessWidget {
  const PostBlock({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 12, right: 12),
              child: ClipOval(
                child: Image.asset(Strings.routeAvatar, width: 53),
              ),
            ),
            Column(
              children: [
                Text(
                  'Route',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight(500),
                    color: AppColors.black,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      '8h .',
                      style: TextStyle(fontSize: 12, color: AppColors.gray),
                    ),
                    Image.asset(Strings.icEarth, width: 12),
                  ],
                ),
              ],
            ),
            Spacer(),
            IconButton(
              onPressed: () {},
              icon: Image.asset(Strings.icMore, width: 22),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            Strings.routeImg,
            width: 393,
            height: 271,
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Image.asset(Strings.icHeart, width: 24),
                visualDensity: VisualDensity.compact,
              ),
              IconButton(
                onPressed: () {},
                icon: Image.asset(Strings.icChat, width: 24),
                visualDensity: VisualDensity.compact,
              ),
              IconButton(
                onPressed: () {},
                icon: Image.asset(Strings.icSend, width: 24),
                visualDensity: VisualDensity.compact,
              ),
              Spacer(),
              IconButton(
                onPressed: () {},
                icon: Image.asset(Strings.icBookmark, width: 24),
                visualDensity: VisualDensity.compact,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
