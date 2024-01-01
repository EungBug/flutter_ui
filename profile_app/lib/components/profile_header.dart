import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          width: 20,
        ),
        _buildHeaderAvatar(),
        const SizedBox(
          width: 20,
        ),
        _buildHeaderProfile(),
      ],
    );
  }

  Widget _buildHeaderAvatar() {
    return const SizedBox();
  }

  Widget _buildHeaderProfile() {
    return const SizedBox();
  }
}
