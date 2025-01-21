import 'package:flutter/material.dart';
import 'package:ui_task/components/decorated_circle.dart';
import 'package:ui_task/components/gradient_divider.dart';

Widget feedItem(context) {
  return Column(
    children: [
      const Row(
        children: [
          DecoratedCircle(
            width: 40,
            height: 40,
          ),
          SizedBox(
            width: 10,
          ),
          Text("Kofiana"),
          Spacer(),
          Icon(
            Icons.more_horiz,
            color: Colors.white,
          )
        ],
      ),
      const SizedBox(
        height: 20,
      ),
      Container(
        height: MediaQuery.of(context).size.height * 0.37,
        width: MediaQuery.of(context).size.width,
        color: Colors.grey,
      ),
      const Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(
          children: [
            Icon(
              Icons.favorite_border,
              color: Colors.white,
            ),
            Spacer(),
            Icon(
              Icons.chat_bubble_outline,
              color: Colors.white,
            ),
            SizedBox(
              width: 10,
            ),
            Icon(
              Icons.archive_outlined,
              color: Colors.white,
            )
          ],
        ),
      ),
      const Align(
        alignment: Alignment.bottomLeft,
        child: Text(
          "1 week ago",
          style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w400),
        ),
      ),
      const SizedBox(
        height: 10,
      ),
      const GradientDivider(),
      const SizedBox(
        height: 20,
      )
    ],
  );
}
