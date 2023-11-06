import 'package:flutter/material.dart';

class AppFooter extends StatelessWidget {
  const AppFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Divider(color: Colors.grey[300]),
        const SizedBox(height: 20),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.6,
          child: Text(
            'This app is created as part of Hlsolutions program. The materials contained on this website are provided for general information only and do not constitute any form of advice. HLS assumes no responsibility for any loss or damage which may arise from reliance on the information contained on this website.',
            style: TextStyle(fontSize: 12, color: Colors.grey[600]),
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(height: 15),
        Text(
          'Copyright 2021 HLS',
          style: TextStyle(fontSize: 13, color: Colors.grey[700], fontWeight: FontWeight.w500),
        ),
        const SizedBox(height: 35),
      ],
    );
  }
}
