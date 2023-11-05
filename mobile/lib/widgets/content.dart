import 'package:flutter/material.dart';
import 'package:mobile/controller.dart';
import 'package:mobile/utils.dart';

class AppContent extends StatefulWidget {
  const AppContent({super.key});

  @override
  State<AppContent> createState() => _AppContentState();
}

class _AppContentState extends State<AppContent> {
  String? _joke;

  void _nextJoke() {
    setState(() {
      _joke = AppController().getRandomUnreadJoke();
    });
  }

  @override
  void initState() {
    _joke = AppController().getRandomUnreadJoke();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 45, bottom: 40),
        child: Column(
          crossAxisAlignment: _joke == null ? CrossAxisAlignment.center : CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Text(
                _joke ?? 'That\'s all the jokes for today! Come back another day!',
                style: TextStyle(fontSize: 14, color: Colors.grey[700]),
              ),
            ),
            const SizedBox(height: 20),
            if (_joke != null)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _button(
                    'This is Funny!',
                    AppColors.secondary,
                    _nextJoke,
                  ),
                  _button(
                    'This is not funny.',
                    AppColors.primary,
                    _nextJoke,
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
