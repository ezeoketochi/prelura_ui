import 'package:flutter/material.dart';
import 'package:ui_task/components/feed_widgets.dart';

class Feed extends StatelessWidget {
  const Feed({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const Row(
                children: [
                  Text("Feed"),
                  Spacer(),
                  Icon(
                    Icons.play_arrow,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.interests_rounded,
                    color: Colors.white,
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Expanded(
                child: SizedBox(
                  child: ListView.builder(
                    itemBuilder: (context, index) => feedItem(context),
                    itemCount: 10,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
