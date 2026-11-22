# flutter_application_1

## Lab Activity 1: Discussion

The newsfeed card supports post images and optional profile images from local assets. Post images use Flutter's `Image.asset`, while profile pictures use `CircleAvatar` with a person icon as a fallback when no avatar is supplied. Image files belong in `assets/images/`, which is registered in `pubspec.yaml`.

The Like and Comment controls use `TextButton.icon` widgets. The like count is displayed as a number; reaction behavior is not implemented.
