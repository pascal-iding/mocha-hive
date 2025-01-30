
import 'package:flutter/material.dart';
import './like_list/like_list.dart';


class Hangout extends StatefulWidget {
  final String title;
  final String description;
  final String date;
  final String groupSize;
  final String meetingPoint;
  final String category;

  const Hangout({
    super.key, required this.title, required this.description, 
    required this.date, required this.groupSize, required this.meetingPoint,
    required this.category,
  });

  @override
  State<Hangout> createState() => _HangoutState();

  String get getCategory => category;
}


class _HangoutState extends State<Hangout> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _getCategoryImage(),
          Transform.translate(
            offset: Offset(0, -30),
            child: Padding(
              padding: EdgeInsets.only(left: 25, right: 25, bottom: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _getCreatorImage(),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '@sara_123',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      Text(
                        '1/12',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  _getEntry(widget.title, widget.description),
                  _getEntry('Datum', widget.date),
                  _getEntry('Gruppengröße', '${widget.groupSize} Personen'),
                  _getEntry('Treffpunkt/ Wegbeschr.', widget.meetingPoint, hideDivider: true),
                  const SizedBox(height: 10),
                  const LikeList(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _getCreatorImage() {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/test_friend_picture.png'),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(8.0),
      ),
    );
  }

  Widget _getCategoryImage() {
    return AspectRatio(
      aspectRatio: 1/1,
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(35.0),
          bottomRight: Radius.circular(35.0),
        ),
        child: Image.asset(
          widget.category,
          fit: BoxFit.cover,
        ),
      )
    );
  }

  Widget _getEntry(String title, String description, {bool hideDivider=false}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 10),
        Text(
          title,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
            fontWeight: FontWeight.bold,
            fontSize: 16.0,
          ),
        ),
        Text(
          description,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        const SizedBox(height: 10),
        if (!hideDivider)
          Divider(
            color: Theme.of(context).dividerColor,
            thickness: 1.0,
          ),
      ],
    );
  }
}