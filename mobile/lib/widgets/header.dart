import 'package:flutter/material.dart';

class AppHeader extends StatelessWidget {
  const AppHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(width: 200),
          Image.asset('assets/logo_hl.png', height: 50, width: 50),
          const Spacer(),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'Handicrafted by',
                    style: TextStyle(fontSize: 12, color: Colors.grey[500]),
                  ),
                  const Text(
                    'Jim HLS',
                    style: TextStyle(fontSize: 13, color: Colors.black87),
                  ),
                ],
              ),
              const SizedBox(width: 15),
              ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.asset('assets/avatar.png', width: 50, height: 50),
              ),
              const SizedBox(width: 150),
            ],
          ),
        ],
      ),
    );
  }
}
