# flutter_application_1

## Laboratory Discussion: Dynamic Images in the News Feed

### Integrating an Image into `newsfeed_card.dart`

The `NewsfeedCard` widget accepts optional image values through `String? postImage` and `String? avatarImage`. These fields are nullable because not every news-feed post must contain a post image or avatar.

In `newsfeed_screen.dart`, each card is created with `NewsfeedCard` parameters. The Tony Stark card passes an image path:

```dart
NewsfeedCard(
  userName: 'Tony Stark',
  postContent: 'I am Iron Man.',
  date: 'December 1, 2023',
  numOfLikes: 3000,
  postImage: 'assets/images/malupiton.jpg',
),
```

The image is stored in `assets/images/malupiton.jpg`, and `pubspec.yaml` registers the assets folder:

```yaml
flutter:
  uses-material-design: true
  assets:
    - assets/images/
    - assets/images/avatars/
```

### Making the Image Optional

Inside `newsfeed_card.dart`, the optional post-image path is read and checked before rendering:

```dart
final postImagePath = postImage;

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
```

`if (postImagePath != null)` is a dynamic conditional widget. When `postImage` contains an asset path, Flutter displays `Image.asset`; when it is omitted or is `null`, the image section is not created. The Steve Rogers card demonstrates this behavior because it has no `postImage` parameter.

The same idea is used for avatar images. `avatarImagePath == null` selects a default `Icons.person_outline` icon, while a supplied asset path is passed to `AssetImage` inside `CircleAvatar`.

This approach makes the reusable `NewsfeedCard` support three combinations: a post with an image, a post without an image, and an optional profile image with a fallback icon.

## Notification Profile Images

`NotificationWidget` accepts an optional `avatarImageAsset` path. When provided, it displays the local image in a circular avatar; otherwise, it shows the default person icon. `NotificationScreen` currently uses `assets/images/avatars/alex_morgan.jpg` for Alex Morgan and `assets/images/avatars/jordan_smith.jpg` for Jordan Smith. Add more portrait files to `assets/images/avatars/` and pass their asset paths to the matching `NotificationWidget` to display additional profile pictures.

## Before and After Enhancement

Add the two device screenshots to a `screenshots` folder in this repository and then update the placeholders below with their exact filenames.

### Before Enhancement

<!-- Add: screenshots/before.png -->

### After Enhancement

<!-- Add: screenshots/after.png -->

## GitHub Repository

Repository: https://github.com/Gelo-23/flutter_application1
