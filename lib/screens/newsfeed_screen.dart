import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/newsfeed_card.dart';

class NewsFeedScreen extends StatelessWidget {
  const NewsFeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const [
          NewsfeedCard(
            userName: 'Steve Rogers',
            postContent: 'I can do this all day! #AvengersAssemble',
            date: '2 hours ago',
            numOfLikes: 10,
          ),
          NewsfeedCard(
            userName: 'Tony Stark',
            postContent: 'I am Iron Man. #GeniusBillionairePlayboyPhilanthropist',
            date: 'December 1, 2023',
            numOfLikes: 3000,
            postImage: 'assets/images/malupiton.jpg',
          ),
        ],
      ),
    );
  }
}
