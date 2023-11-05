import 'package:flutter/material.dart';
import 'package:mobile/utils.dart';

class AppContent extends StatelessWidget {
  const AppContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 45, bottom: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Text(
                'joke content',
                style: TextStyle(fontSize: 14, color: Colors.grey[700]),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _button(
                  'This is Funny!',
                  AppColors.secondary,
                  () {},
                ),
                _button(
                  'This is not funny.',
                  AppColors.primary,
                  () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _button(String title, Color color, void Function() onPressed) {
    return SizedBox(
      width: 120,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
          elevation: 0,
          padding: EdgeInsets.zero,
          backgroundColor: color,
        ),
        child: Text(
          title,
          style: const TextStyle(fontSize: 13, color: Colors.white, fontWeight: FontWeight.w400),
        ),
      ),
    );
  }
}
