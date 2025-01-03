import 'package:flutter/material.dart';

class FriendTile extends StatefulWidget {
  final Map<String, String> friend;

  const FriendTile({required this.friend, super.key});

  @override
  State<FriendTile> createState() => _FriendTileState();
}

class _FriendTileState extends State<FriendTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                image: AssetImage('assets/images/test_friend_picture.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: IntrinsicHeight(
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 3.0),
                color: Color.fromARGB(217, 255, 255, 255),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.friend['name']!, 
                      style: Theme.of(context).textTheme.labelLarge
                    ),
                    Text(
                      '@${widget.friend['username']!}', 
                      style: Theme.of(context).textTheme.labelMedium
                    ),
                  ],
                ),
              )
            )
          )
        ]
      ),
    );
  }
}