import 'package:flutter/material.dart';
import 'package:ui_task/components/decorated_circle.dart';
import 'package:ui_task/components/slidable_containers.dart';

Widget RecentlyViewed(context) {
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Recently viewed',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
          const Icon(
            Icons.arrow_forward_outlined,
            color: Colors.white,
            fill: 0.2,
          ),
        ],
      ),
      const Row(
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: DecoratedCircle(),
          ),
        ],
      ),
    ],
  );
}

Widget ExploreByTopic(context, topics) {
  return Column(
    children: [
      const Align(
        alignment: Alignment.bottomLeft,
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            "Explore by Topic",
          ),
        ),
      ),
      SizedBox(
        height: 40,
        width: MediaQuery.of(context).size.width,
        child: ListView.builder(
          itemBuilder: (context, index) {
            return SlidableContainers(index: index, topics: topics);
          },
          scrollDirection: Axis.horizontal,
          itemCount: topics.length,
        ),
      ),
      SizedBox(
        height: 10,
      ),
      SizedBox(
        height: 40,
        width: MediaQuery.of(context).size.width,
        child: ListView.builder(
          reverse: true,
          itemBuilder: (context, index) {
            return SlidableContainers(index: index, topics: topics);
          },
          scrollDirection: Axis.horizontal,
          itemCount: topics.length,
        ),
      ),
    ],
  );
}

Widget Popular(context, topics) {
  return Column(
    children: [
      const Align(
        alignment: Alignment.bottomLeft,
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Text("Popular"),
        ),
      ),
      SizedBox(
        height: MediaQuery.of(context).size.height * 0.3,
        width: MediaQuery.of(context).size.width,
        child: ListView.builder(
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey,
              ),
              margin: const EdgeInsets.symmetric(horizontal: 10),
              height: MediaQuery.of(context).size.height * 0.3,
              width: MediaQuery.of(context).size.width * 0.37,
              // color: Colors.grey,
              child: Center(
                child: Text("Video ${index + 1}"),
              ),
            );
          },
          scrollDirection: Axis.horizontal,
          itemCount: topics.length,
        ),
      ),
    ],
  );
}

Widget ServiceSpotlight(context, topics) {
  return Column(
    children: [
      const Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Service Spotlight"),
            Icon(
              Icons.arrow_forward_outlined,
              color: Colors.white,
            )
          ],
        ),
      ),
      SizedBox(
        height: MediaQuery.of(context).size.height * 0.3,
        width: MediaQuery.of(context).size.width,
        child: ListView.builder(
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.blueGrey,
              ),
              margin: const EdgeInsets.symmetric(horizontal: 10),
              height: MediaQuery.of(context).size.height * 0.3,
              width: MediaQuery.of(context).size.width * 0.5,
              child: Stack(
                children: [
                  Center(
                    child: Text("Picture ${index + 1}"),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.grey,
                        ),
                        width: 70,
                        height: 30,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            const Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                            Text("${index + 1.3}"),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
          scrollDirection: Axis.horizontal,
          itemCount: topics.length,
        ),
      ),
    ],
  );
}
