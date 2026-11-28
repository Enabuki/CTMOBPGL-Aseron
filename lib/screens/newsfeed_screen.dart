import 'package:flutter/material.dart';

import '../widgets/newsfeed_card.dart';

class NewsfeedScreen extends StatelessWidget {
  const NewsfeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const [
          // First post
          NewsfeedCard(
            userName: 'Tony Stark',
            postContent: 'Hello everyone! Welcome to my Facebook page.',
            date: '2 hrs ago',
            numOfLikes: 120,
            hasImage: true,
            avatarImage: 'assets/images/tony_avatar.jpg',
            postImage: 'assets/images/iron_man.jpg',
          ),

          // Second post
          NewsfeedCard(
            userName: 'Steve Rogers',
            postContent: 'Have a great day, everyone!',
            date: '4 hrs ago',
            numOfLikes: 85,
            hasImage: false,
            avatarImage: 'assets/images/steve_avatar.jpg',
          ),

          // Third post
          NewsfeedCard(
            userName: 'Peter Parker',
            postContent: 'Just another day in New York City!',
            date: '5 hrs ago',
            numOfLikes: 45,
            hasImage: true,
            avatarImage: 'assets/images/peter_avatar.jpg',
            postImage: 'assets/images/peter_parker.jpg',
          ),

          // Fourth post
          NewsfeedCard(
            userName: 'Natasha Romanoff',
            postContent: 'Stay positive and keep moving forward.',
            date: '1 day ago',
            numOfLikes: 200,
            hasImage: false,
            avatarImage: 'assets/images/natasha_avatar.jpg',
          ),
        ],
      ),
    );
  }
}
