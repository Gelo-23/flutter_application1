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
            userName: 'Nur Habibi',
            postContent: 'I can do this all day! #AvengersAssemble',
            date: '2 hours ago',
            numOfLikes: 10,
          ),
          NewsfeedCard(
            userName: 'Angkul Sosa',
            postContent:
                'I am Iron Man. #GeniusBillionairePlayboyPhilanthropist',
            date: 'December 1, 2026',
            numOfLikes: 3000,
            postImage: 'assets/images/malupiton.jpg',
          ),
          NewsfeedCard(
            userName: 'Vin Diesel',
            postContent: 'Good Morning.',
            date: 'Yesterday',
            numOfLikes: 245,
            postImage: 'https://ichef.bbci.co.uk/ace/standard/976/cpsprodpb/16935/production/_86096429_vindiesel.jpg',
          ),
          NewsfeedCard(
            userName: 'MakuLTO',
            postContent: 'Science is a lot better when shared.',
            date: 'November 22',
            numOfLikes: 128,
          ),
          NewsfeedCard(
            userName: 'Ica Maitim',
            postContent: 'Family time is the best time.',
            date: 'November 21',
            numOfLikes: 89,
          ),
          NewsfeedCard(
            userName: 'Bok Bok',
            postContent: 'A little magic can brighten any day.',
            date: 'November 20',
            numOfLikes: 512,
          ),
          NewsfeedCard(
            userName: 'Gabo Villanueva',
            postContent: 'Friendly neighborhood check-in. Stay safe!',
            date: 'November 19',
            numOfLikes: 734,
          ),
          NewsfeedCard(
            userName: 'Mave Baterbonia',
            postContent: 'Just a kid with a big dream.',
            date: 'November 18',
            numOfLikes: 920,
            postImage: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSTqdGl_fZxtS4lLlMx_YLDXrwTe026Qblw3WJkXiUfUdewZ3RbAucKDAC3&s=10',
          ),
          NewsfeedCard(
            userName: 'Gilu Kyun',
            postContent: 'Keep showing up for each other.',
            date: 'November 17',
            numOfLikes: 306,
          ),
          NewsfeedCard(
            userName: 'Gian Kun',
            postContent: 'Strength and compassion belong together.',
            date: 'November 16',
            numOfLikes: 1100,
          ),
        ],
      ),
    );
  }
}
