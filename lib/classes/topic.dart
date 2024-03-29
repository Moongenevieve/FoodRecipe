import 'package:flutter/material.dart';

class TopicSection extends StatelessWidget {
  const TopicSection({
    super.key,
    required this.topic,
  });

  final String topic;
  @override
  Widget build(BuildContext context) {
    return Text(
      topic,
      style: const TextStyle(
          fontSize: 30, fontWeight: FontWeight.w700, color: Color(0xff000000)),
    );
  }
}
