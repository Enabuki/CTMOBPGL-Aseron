import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constant.dart';
import 'custom_text.dart';

class NewsfeedCard extends StatelessWidget {
  final String userName;
  final String postContent;
  final String date;
  final int? numOfLikes;
  final bool? hasImage;
  final String avatarImage;
  final String? postImage;

  const NewsfeedCard({
    super.key,
    required this.userName,
    required this.postContent,
    required this.date,
    required this.avatarImage,
    this.numOfLikes,
    this.hasImage,
    this.postImage,
  });

  @override
  Widget build(BuildContext context) {
    final screenUtil1Sp = 10.sp;
    final screenUtilWidth = 10.w;
    final screenUtilFontUserNameSize = 15.sp;
    final screenUtilIconSize = 15.sp;

    return Card(
      margin: EdgeInsets.all(screenUtil1Sp),
      child: Padding(
        padding: EdgeInsets.all(screenUtil1Sp),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // User information
            Row(
              children: [
                CircleAvatar(
                  radius: 20.r,
                  backgroundImage: AssetImage(avatarImage),
                ),
                SizedBox(width: screenUtilWidth),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: userName,
                      fontSize: screenUtilFontUserNameSize,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                    Row(
                      children: [
                        CustomText(
                          text: date,
                          fontSize: 12.sp,
                          color: Colors.grey,
                        ),
                        SizedBox(width: 3.w),
                        Icon(
                          Icons.public,
                          color: Colors.grey,
                          size: screenUtilIconSize,
                        ),
                      ],
                    ),
                  ],
                ),

                const Spacer(),
                const Icon(Icons.more_horiz),
              ],
            ),

            SizedBox(height: 5.h),

            // Post content
            CustomText(text: postContent, fontSize: 12.sp, color: Colors.black),

            SizedBox(height: 5.h),

            // Dynamic post image
            if (hasImage == true && postImage != null)
              ClipRRect(
                borderRadius: BorderRadius.circular(5.r),
                child: Image.asset(
                  postImage!,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),

            // Number of likes
            Padding(
              padding: EdgeInsets.symmetric(vertical: 5.h),
              child: CustomText(
                text: '${numOfLikes ?? 0} Likes',
                fontSize: 12.sp,
                color: Colors.grey,
              ),
            ),

            const Divider(height: 1),

            // Like, Comment, Share buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.thumb_up_outlined,
                    color: fbDarkPrimary,
                  ),
                  label: CustomText(
                    text: 'Like',
                    fontSize: 12.sp,
                    color: fbDarkPrimary,
                  ),
                ),

                TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.comment_outlined,
                    color: fbDarkPrimary,
                  ),
                  label: CustomText(
                    text: 'Comment',
                    fontSize: 12.sp,
                    color: fbDarkPrimary,
                  ),
                ),

                TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.share_outlined, color: fbDarkPrimary),
                  label: CustomText(
                    text: 'Share',
                    fontSize: 12.sp,
                    color: fbDarkPrimary,
                  ),
                ),
              ],
            ),

            const Divider(height: 1),

            // Comment input
            Row(
              children: [
                CircleAvatar(
                  radius: 15.r,
                  backgroundImage: AssetImage(avatarImage),
                ),
                SizedBox(width: 10.w),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(left: 10.w),
                    alignment: Alignment.centerLeft,
                    height: 25.h,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.all(Radius.circular(10.r)),
                    ),
                    child: CustomText(
                      text: 'Write a comment...',
                      fontSize: 11.sp,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
