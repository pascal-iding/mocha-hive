
import 'dart:ui';
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
              child: ClipRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 3.0),
                    color: const Color.fromARGB(150, 255, 255, 255).withOpacity(0.6),
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
                  ),
                ),
              ),
            ),
          )
        ]
      ),
    );
  }
}