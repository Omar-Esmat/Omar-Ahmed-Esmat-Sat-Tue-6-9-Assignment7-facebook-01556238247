import 'package:facebook/core/strings/strings.dart';
import 'package:facebook/core/ui/colors/app_colors.dart';
import 'package:facebook/core/ui/widgets/create_story.dart';
import 'package:facebook/core/ui/widgets/post_block.dart';
import 'package:facebook/core/ui/widgets/story_stack.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        backgroundColor: AppColors.white,
        appBar: AppBar(
          backgroundColor: AppColors.white,
          title: InkWell(
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => MainScreen()),
              );
            },
            child: Image.asset(Strings.navbarLogo, width: 156),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Image.asset(Strings.icPlus, width: 28),
              visualDensity: VisualDensity.compact,
            ),
            IconButton(
              onPressed: () {},
              icon: Image.asset(Strings.icSearch, width: 24),
              visualDensity: VisualDensity.compact,
            ),
            IconButton(
              onPressed: () {},
              icon: Image.asset(Strings.icMessengar, width: 24),
              visualDensity: VisualDensity.compact,
            ),
          ],
          bottom: TabBar(
            indicatorColor: AppColors.blue,
            indicatorWeight: 2,
            indicatorSize: TabBarIndicatorSize.tab,
            tabs: [
              Tab(icon: Image.asset(Strings.icHome, width: 25)),
              Tab(icon: Image.asset(Strings.icReels, width: 30)),
              Tab(icon: Image.asset(Strings.icStore, width: 26)),
              Tab(icon: Image.asset(Strings.icProfile, width: 30)),
              Tab(icon: Image.asset(Strings.icNotification, width: 28)),
              Tab(
                icon: ClipOval(
                  child: Image.asset(
                    Strings.profileAvatar,
                    width: 31,
                    height: 31,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            spacing: 12,
            mainAxisAlignment: .center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15, left: 12, right: 12),
                child: Row(
                  spacing: 16,
                  children: [
                    ClipOval(
                      child: Image.asset(
                        Strings.profileAvatar,
                        width: 43,
                        height: 43,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Text(
                      'What\'s in Your Mind?',
                      style: TextStyle(color: AppColors.gray, fontSize: 16),
                    ),
                    Spacer(),
                    Image.asset(Strings.icGalary, width: 29),
                  ],
                ),
              ),
              Divider(color: AppColors.gray, thickness: 2),
              Padding(
                padding: const EdgeInsets.only(right: 8.0, left: 8),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    spacing: 16,
                    children: [
                      CreateStory(),
                      StoryStack(
                        storyAvatar: Strings.storyAvatar1,
                        storyImg: Strings.story1,
                      ),
                      StoryStack(
                        storyAvatar: Strings.storyAvatar2,
                        storyImg: Strings.story2,
                      ),
                      StoryStack(
                        storyAvatar: Strings.storyAvatar3,
                        storyImg: Strings.story3,
                      ),
                    ],
                  ),
                ),
              ),
              Divider(color: AppColors.gray, thickness: 2),
              PostBlock(),
              Divider(color: AppColors.gray, thickness: 2),
              PostBlock(),
              Divider(color: AppColors.gray, thickness: 2),
            ],
          ),
        ),
      ),
    );
  }
}
