import 'package:flutter_application_1/widgets/newsfeed_card.dart';
import 'package:material_ui/material_ui.dart';

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
            postContent:
                'I am Iron Man. #GeniusBillionairePlayboyPhilanthropist',
            date: 'December 1, 2023',
            numOfLikes: 3000,
            postImage: 'assets/images/malupiton.jpg',
          ),
          NewsfeedCard(
            userName: 'Natasha Romanoff',
            postContent: 'A quiet morning and a strong cup of coffee.',
            date: 'Yesterday',
            numOfLikes: 245,
          ),
          NewsfeedCard(
            userName: 'Bruce Banner',
            postContent: 'Science is a lot better when shared.',
            date: 'November 22',
            numOfLikes: 128,
          ),
          NewsfeedCard(
            userName: 'Clint Barton',
            postContent: 'Family time is the best time.',
            date: 'November 21',
            numOfLikes: 89,
          ),
          NewsfeedCard(
            userName: 'Wanda Maximoff',
            postContent: 'A little magic can brighten any day.',
            date: 'November 20',
            numOfLikes: 512,
          ),
          NewsfeedCard(
            userName: 'Peter Parker',
            postContent: 'Friendly neighborhood check-in. Stay safe!',
            date: 'November 19',
            numOfLikes: 734,
          ),
          NewsfeedCard(
            userName: 'Carol Danvers',
            postContent: 'Looking up, moving forward.',
            date: 'November 18',
            numOfLikes: 920,
          ),
          NewsfeedCard(
            userName: 'Sam Wilson',
            postContent: 'Keep showing up for each other.',
            date: 'November 17',
            numOfLikes: 306,
          ),
          NewsfeedCard(
            userName: 'T Challa',
            postContent: 'Strength and compassion belong together.',
            date: 'November 16',
            numOfLikes: 1100,
          ),
        ],
      ),
    );
  }
}
