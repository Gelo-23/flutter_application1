import 'package:flutter_application_1/widgets/notification.dart';
import 'package:material_ui/material_ui.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const notifications = [
      NotificationWidget(
        description: 'mentioned you in a post',
        post: 'A great day with friends',
        name: 'Test',
      ),
      NotificationWidget(
        description: 'liked your photo',
        post: 'Weekend memories',
        name: 'Alex Morgan',
      ),
      NotificationWidget(
        description: 'commented on your post',
        post: 'Coffee and sunshine',
        name: 'Jamie Lee',
      ),
      NotificationWidget(
        description: 'shared your post',
        post: 'Community clean-up this Saturday',
        name: 'Taylor Kim',
      ),
      NotificationWidget(
        description: 'mentioned you in a comment',
        post: 'Movie night plans',
        name: 'Jordan Smith',
        avatarImageAsset: 'assets/images/avatars/jordan_smith.jpg',
      ),
      NotificationWidget(
        description: 'liked your post',
        post: 'A little progress every day',
        name: 'Morgan Chen',
      ),
      NotificationWidget(
        description: 'commented on your photo',
        post: 'Sunset by the beach',
        name: 'Riley Davis',
      ),
      NotificationWidget(
        description: 'invited you to an event',
        post: 'Sunday picnic in the park',
        name: 'Casey Brown',
      ),
      NotificationWidget(
        description: 'liked your post',
        post: 'New recipe, same cozy kitchen',
        name: 'Avery Wilson',
      ),
      NotificationWidget(
        description: 'mentioned you in a post',
        post: 'Team project complete!',
        name: 'Quinn Taylor',
      ),
      NotificationWidget(
        description: 'commented on your post',
        post: 'Walking trails to try',
        name: 'Cameron Garcia',
      ),
      NotificationWidget(
        description: 'liked your photo',
        post: 'A day at the museum',
        name: 'Drew Martinez',
      ),
      NotificationWidget(
        description: 'shared your post',
        post: 'Local book exchange',
        name: 'Skyler Anderson',
      ),
      NotificationWidget(
        description: 'mentioned you in a comment',
        post: 'Thanks for the recommendation!',
        name: 'Parker Thomas',
      ),
      NotificationWidget(
        description: 'liked your post',
        post: 'Morning run complete',
        name: 'Reese Jackson',
      ),
      NotificationWidget(
        description: 'commented on your photo',
        post: 'Fresh flowers for the table',
        name: 'Robin White',
      ),
      NotificationWidget(
        description: 'invited you to an event',
        post: 'Board game night',
        name: 'Emerson Harris',
      ),
      NotificationWidget(
        description: 'liked your post',
        post: 'Learning something new today',
        name: 'Finley Clark',
      ),
      NotificationWidget(
        description: 'commented on your post',
        post: 'What are you reading this week?',
        name: 'Dakota Lewis',
      ),
      NotificationWidget(
        description: 'mentioned you in a post',
        post: 'Throwback to our road trip',
        name: 'Harper Young',
      ),
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView.separated(
        itemCount: notifications.length,
        itemBuilder: (context, index) => notifications[index],
        separatorBuilder: (context, index) => const Divider(height: 1),
      ),
    );
  }
}
