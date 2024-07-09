import 'package:circle_sync/core/helpers/spacing.dart';
import 'package:circle_sync/core/themes/colors/colors.dart';
import 'package:circle_sync/core/themes/text_styles/text_styles.dart';
import 'package:circle_sync/core/widgets/button.dart';
import 'package:circle_sync/features/profile/post_item.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: SizedBox(
        width: size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                const CircleAvatar(
                  radius: 80,
                  backgroundImage: NetworkImage(''), // Placeholder image
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    decoration: const BoxDecoration(
                      color: ColorManager.primary,
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                      icon:
                          const Icon(Icons.edit, color: Colors.white, size: 20),
                      onPressed: () {
                        // Logic to change profile picture
                      },
                    ),
                  ),
                ),
              ],
            ),
            verticalSpace(size.height * 0.025),
            const Text(
              "Magd Kamal",
              style: TextStyles.heading1,
            ),
            verticalSpace(size.height * 0.0225),
            AppButton(onPressed: () {}, text: "Save Changes"),
            verticalSpace(size.height * 0.04),
            Container(
              width: double.infinity,
              height: 1,
              color: ColorManager.primary,
            ),
            verticalSpace(size.height * 0.04),
            PostItem(
                userName: "Magd",
                postContent:
                    "contendgkjkwohiwoeiieiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiijijjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjt",
                likesCount: 2,
                commentsCount: 3),
          ],
        ),
      ),
    );
  }
}
