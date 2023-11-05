import 'package:flutter/material.dart';
import 'package:mobile/widgets/banner.dart';
import 'package:mobile/widgets/content.dart';
import 'package:mobile/widgets/footer.dart';
import 'package:mobile/widgets/header.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppHeader(),
      body: Column(
        children: [
          AppBanner(),
          AppContent(),
          AppFooter(),
        ],
      ),
    );
  }
}