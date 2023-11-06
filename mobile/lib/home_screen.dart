import 'package:flutter/material.dart';
import 'package:mobile/widgets/banner.dart';
import 'package:mobile/widgets/content.dart';
import 'package:mobile/widgets/footer.dart';
import 'package:mobile/widgets/header.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          AppHeader(),
          AppBanner(),
          AppContent(),
          AppFooter(),
        ],
      ),
    );
  }
}