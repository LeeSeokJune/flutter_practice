import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

enum AvatarType { TYPE1, TYPE2, TYPE3 }

class AvatarWidget extends StatelessWidget {
  bool? hasStoty;
  String thumbPath;
  String? nickname;
  AvatarType type;
  double? size;
  AvatarWidget({
    Key? key,
    required this.type,
    required this.thumbPath,
    this.hasStoty,
    this.nickname,
    this.size = 65,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    switch (type) {
      case AvatarType.TYPE1:
        return type1Widget();

      case AvatarType.TYPE2:
        return type2Widget();

      case AvatarType.TYPE3:
        return type3Widget();
    }
  }

  Widget type1Widget() {
    return Container(
      padding: EdgeInsets.all(2),
      margin: EdgeInsets.symmetric(
        horizontal: 5,
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Colors.purple,
            Colors.orange,
          ],
        ),
        shape: BoxShape.circle,
      ),
      child: type2Widget(),
    );
  }

  Widget type2Widget() {
    return Container(
      padding: EdgeInsets.all(2),
      decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.white),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(size!),
        child: SizedBox(
          width: size,
          height: size,
          child: CachedNetworkImage(
            imageUrl: thumbPath,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  Widget type3Widget() {
    return Row(
      children: [
        type1Widget(),
        Text(
          nickname ?? '',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
