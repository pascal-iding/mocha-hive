
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
    return Container(
      padding: EdgeInsets.only(top: 5, bottom: 0, left: 15, right: 15),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        border: Border(
          left: BorderSide(
            color: Theme.of(context).dividerColor,
            width: 1.0,
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: 100,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(widget.category),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          const SizedBox(height: 10),
          _getEntry(widget.title, widget.description),
          const SizedBox(height: 15),
          _getEntry("Datum", widget.date),
          const SizedBox(height: 15),
          _getEntry("Gruppengröße", widget.groupSize),
          const SizedBox(height: 15),
          _getEntry("Treffpunkt/ Wegbeschr.", widget.meetingPoint),
          const SizedBox(height: 15),
          LikeList(),
        ],
      ),
    );
  }

  Widget _getEntry(String title, String description) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Transform.translate(
          offset: const Offset(-20, 0),
          child: Row(
            children: [
              Icon(
                Icons.circle,
                size: 10.0,
                color: Theme.of(context).dividerColor,
              ),
              const SizedBox(width: 10),
              Text(
                title,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                ),
              ),
            ],
          ),
        ),
        Text(
          description,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}