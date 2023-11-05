import 'package:flutter/material.dart';

class AppHeader extends StatelessWidget implements PreferredSizeWidget {
  const AppHeader({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      title: Image.asset('assets/logo_hl.png', height: 40, width: 40),
      actions: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'Handicrafted by',
                  style: TextStyle(fontSize: 10, color: Colors.grey[500]),
                ),
                const Text(
                  'Jim HLS',
                  style: TextStyle(fontSize: 11, color: Colors.black87),
                ),
              ],
            ),
            const SizedBox(width: 10),
            ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.asset('assets/avatar.png', width: 36, height: 36),
            ),
            const SizedBox(width: 10),
          ],
        ),
      ],
    );
  }
}
