import 'package:flutter/material.dart';
import 'package:notes_app_version1/widgets/custom_appBar.dart';
import 'package:notes_app_version1/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          CustomAppBar(
            text: 'Notes',
            icon: Icons.search,
          ),
          HomeViewBody(),
        ],
      ),
    );
  }
}
