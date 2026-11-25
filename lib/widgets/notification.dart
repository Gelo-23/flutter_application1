import 'package:flutter_application_1/widgets/custom_text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:material_ui/material_ui.dart';

class NotificationWidget extends StatelessWidget {
  const NotificationWidget({
    super.key,
    required this.name,
    required this.post,
    required this.description,
    this.avatarImageAsset,
  });

  final String name;
  final String post;
  final String description;
  final String? avatarImageAsset;

  @override
  Widget build(BuildContext context) {
    final avatarPath = avatarImageAsset;

    return Padding(
      padding: EdgeInsets.all(15.w),
      child: Row(
        children: [
          CircleAvatar(
            radius: 22.r,
            backgroundImage: avatarPath == null ? null : AssetImage(avatarPath),
            child: avatarPath == null ? const Icon(Icons.person) : null,
          ),
          SizedBox(width: 10.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: name,
                  fontSize: 20.sp,
                  color: Colors.black,
                  fontWeight: FontWeight.w800,
                ),
                CustomText(
                  text: 'Post: $post',
                  fontSize: 13.sp,
                  color: Colors.black,
                ),
                CustomText(
                  text: description,
                  fontSize: 12.sp,
                  color: Colors.black,
                  fontStyle: FontStyle.italic,
                ),
              ],
            ),
          ),
          const Icon(Icons.more_horiz),
        ],
      ),
    );
  }
}
