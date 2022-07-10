import 'package:ewallet_slicing_ui/shared/theme.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Profile Page',
          style: greyTextStyle.copyWith(fontSize: 20, fontWeight: semiBold),
        ),
      ),
    );
  }
}
