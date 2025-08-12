import 'package:flutter/material.dart';
import 'package:shop_advanced_graphql/core/app/common/animations/animate_do.dart';

class UserAvatarImage extends StatelessWidget {
  const UserAvatarImage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomFadeInDown(
      duration: 400,
      child: const CircleAvatar(
        radius: 38,
        backgroundImage: NetworkImage('https://via.placeholder.com/150'),
      ),
    );
  }
}