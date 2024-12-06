import 'package:flutter/material.dart';

class EducationSection extends StatelessWidget {
  const EducationSection({Key? key}) : super(key: key);

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
          Text('Education', style: Theme.of(context).textTheme.headlineLarge),
          const SizedBox(height: 8),
          ListTile(
            contentPadding: EdgeInsets.zero,
            title: Text(
              'Bachelor of Science in Computer Science',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            subtitle: Text('University of California, 2020', style: Theme.of(context).textTheme.bodyMedium),
            leading: Icon(Icons.school, color: Theme.of(context).primaryColor),
          ),
        ],
      ),
    );
  }
}
