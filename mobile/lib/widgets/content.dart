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
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.6,
        child: Column(
          children: [
            const SizedBox(height: 40),
            Expanded(
              child: Text(
                _joke ?? 'That\'s all the jokes for today! Come back another day!',
                style: TextStyle(fontSize: 14, color: Colors.grey[700]),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.4,
              child: Divider(color: Colors.grey[250]),
            ),
            const SizedBox(height: 35),
            if (_joke != null)
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _button(
                    'This is Funny!',
                    AppColors.secondary,
                    _nextJoke,
                  ),
                  const SizedBox(width: 20),
                  _button(
                    'This is not funny.',
                    AppColors.primary,
                    _nextJoke,
                  ),
                ],
              ),
            const SizedBox(height: 70),
          ],
        ),
      ),
    );
  }

  Widget _button(String title, Color color, void Function() onPressed) {
    return SizedBox(
      width: 200,
      height: 40,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
          padding: EdgeInsets.zero,
          backgroundColor: color,
        ),
        child: Text(
          title,
          style: const TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.w400),
        ),
      ),
    );
  }
}
