import 'package:flutter/material.dart';
import 'package:mobile/utils.dart';

class AppBanner extends StatelessWidget {
  const AppBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: AppColors.primary,
      child: const Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 40),
          Text(
            'A joke a day keeps the doctor away',
            style: TextStyle(fontSize: 24, color: Colors.white, fontWeight: FontWeight.w500),
          ),
          SizedBox(height: 10),
          Text(
            'If you joke wrong way, your teeth have to pay. (Serious)',
            style: TextStyle(fontSize: 12, color: Colors.white),
          ),
          SizedBox(height: 45),
        ],
      ),
    );
  }
}
