import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfol/profile_header.dart';
import 'package:portfol/skills_section.dart';

import 'about_section.dart';
import 'education_section.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ProfileHeader(),
              const SizedBox(height: 16),
              const AboutSection(),
              const SizedBox(height: 16),
              const SkillsSection(),
              const SizedBox(height: 16),
              const EducationSection(),
            ],
          ),
        ),
      ),
    );
  }
}
