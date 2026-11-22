import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/custom_text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NewsfeedCard extends StatelessWidget {
  const NewsfeedCard({
    super.key,
    required this.userName,
    required this.postContent,
    required this.date,
    this.numOfLikes,
    this.postImage,
    this.avatarImage,
  });

  final String userName;
  final String postContent;
  final String date;
  final int? numOfLikes;
  final String? postImage;
  final String? avatarImage;

  @override
  Widget build(BuildContext context) {
    final postImagePath = postImage;
    final avatarImagePath = avatarImage;

    return Card(
      margin: EdgeInsets.all(8.w),
      child: Padding(
        padding: EdgeInsets.all(12.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 18.r,
                  backgroundImage: avatarImagePath == null
                      ? null
                      : AssetImage(avatarImagePath),
                  child: avatarImagePath == null
                      ? const Icon(Icons.person_outline)
                      : null,
                ),
                SizedBox(width: 8.w),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: userName,
                        fontSize: 15.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                      SizedBox(height: 4.h),
                      Row(
                        children: [
                          CustomText(
                            text: date,
                            fontSize: 12.sp,
                            color: Colors.grey,
                          ),
                          SizedBox(width: 4.w),
                          Icon(
                            Icons.public,
                            color: Colors.grey,
                            size: 14.w,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.more_horiz),
                ),
              ],
            ),
            SizedBox(height: 12.h),
            CustomText(
              text: postContent,
              fontSize: 12.sp,
              color: Colors.black87,
            ),
            if (postImagePath != null)
              Padding(
                padding: EdgeInsets.only(top: 12.h),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.r),
                  child: Image.asset(
                    postImagePath,
                    height: 180.h,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            SizedBox(height: 8.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.thumb_up_outlined),
                  label: CustomText(
                    text: '${numOfLikes ?? 0}',
                    fontSize: 12.sp,
                    color: Colors.blueGrey,
                  ),
                ),
                TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.comment_outlined),
                  label: CustomText(
                    text: 'Comment',
                    fontSize: 12.sp,
                    color: Colors.blueGrey,
                  ),
                ),
                TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.redo),
                  label: CustomText(
                    text: 'Share',
                    fontSize: 12.sp,
                    color: Colors.blueGrey,
                  ),
                ),
              ],
            ),
            SizedBox(height: 8.h),
            Row(
              children: [
                Icon(Icons.account_circle_outlined, size: 30.w),
                SizedBox(width: 8.w),
                Expanded(
                  child: Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                    height: 32.h,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: CustomText(
                      text: 'Write a comment ...',
                      fontSize: 11.sp,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.h),
            CustomText(
              text: 'View all comments',
              fontSize: 12.sp,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ],
        ),
      ),
    );
  }
}
