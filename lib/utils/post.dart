import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyPost extends StatelessWidget {
  final String ImageUrl;
  final String text;
  final String PostUrl;
  const MyPost(
      {required this.ImageUrl, required this.text, required this.PostUrl});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.asset(
                    "assets/images/$ImageUrl",
                    width: 50.0,
                    height: 50.0,
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  text,
                  style: TextStyle(
                    fontSize: 24.0,
                  ),
                ),
              ],
            ),
            IconButton(
              onPressed: () {},
              icon: FaIcon(FontAwesomeIcons.ellipsisVertical),
            )
          ],
        ),
        SizedBox(
          height: 10.0,
        ),
        Container(
          height: 300.0,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0)),
          child: Image.asset(
            "assets/images/$PostUrl",
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        SizedBox(
          height: 50.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: FaIcon(
                      FontAwesomeIcons.heart,
                      size: 35.0,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: FaIcon(
                      FontAwesomeIcons.comment,
                      size: 35.0,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: FaIcon(
                      FontAwesomeIcons.paperPlane,
                      size: 35.0,
                    ),
                  ),
                ],
              ),
              IconButton(
                onPressed: () {},
                icon: FaIcon(
                  FontAwesomeIcons.bookmark,
                  size: 35.0,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20.0,
        )
      ],
    );
  }
}
