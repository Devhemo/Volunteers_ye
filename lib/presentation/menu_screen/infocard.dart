import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class infocard extends StatelessWidget {
  const infocard({
    Key? key,
    required this.name,
    required this.profession,
  }) : super(key: key);
  final String name, profession;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        child: Icon(
          CupertinoIcons.person_circle,
          color: Colors.white,
        ),
      ),
      title: Text(name),
      subtitle: Text(profession),
    );
  }
}
