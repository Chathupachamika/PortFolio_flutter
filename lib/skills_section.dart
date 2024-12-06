import 'package:flutter/material.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 8.0,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Skills', style: Theme.of(context).textTheme.headlineLarge),
          const SizedBox(height: 8),
          SkillIndicator(skill: 'Flutter', level: 0.9),
          SkillIndicator(skill: 'Dart', level: 0.85),
          SkillIndicator(skill: 'UI/UX Design', level: 0.75),
        ],
      ),
    );
  }
}

class SkillIndicator extends StatelessWidget {
  final String skill;
  final double level;

  const SkillIndicator({required this.skill, required this.level, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(skill, style: Theme.of(context).textTheme.bodyLarge),
          const SizedBox(height: 4),
          LinearProgressIndicator(
            value: level,
            backgroundColor: Colors.grey[300],
            color: Theme.of(context).primaryColor,
          ),
        ],
      ),
    );
  }
}
