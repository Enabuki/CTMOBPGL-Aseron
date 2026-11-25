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

  const NewsfeedCard({
    super.key,
    required this.userName,
    required this.postContent,
    required this.date,
    this.numOfLikes,
    this.hasImage,
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
                const Icon(Icons.person),
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

            // Post image
            if (hasImage == true)
              Image.asset(
                'assets/images/iron_man.jpg',
                width: double.infinity,
                fit: BoxFit.cover,
              ),

            // Like, Comment, Share
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.thumb_up, color: fbPrimary),
                  label: CustomText(
                    text: '${numOfLikes ?? 0}',
                    fontSize: 12.sp,
                    color: fbDarkPrimary,
                  ),
                ),

                TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.comment, color: fbDarkPrimary),
                  label: CustomText(
                    text: 'Comment',
                    fontSize: 12.sp,
                    color: fbDarkPrimary,
                  ),
                ),

                TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.redo, color: fbDarkPrimary),
                  label: CustomText(
                    text: 'Share',
                    fontSize: 12.sp,
                    color: fbDarkPrimary,
                  ),
                ),
              ],
            ),

            // Comment input
            Row(
              children: [
                const Icon(Icons.person),
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
