import 'package:flutter/material.dart';
import 'package:ui_task/components/discover_widgets.dart';

class DiscoverPage extends StatelessWidget {
  const DiscoverPage({super.key});

  @override
  Widget build(BuildContext context) {
    const topics = [
      "Tatto",
      "Nails",
      "NailsArt",
      "Nailiinspo",
      "NailsDesign",
      "CreativeNails",
      "NailCare",
      "NailFashion",
      "TattooInspiration",
      "NailPolish",
      "CustomTattoo",
      "ArtisticNails",
      "TattooStudio",
      "NailArtistry",
      "TattooCulture",
      "UniqueNails",
      "ElegantNails",
      "TattooVibes"
    ];

    return Scaffold(
      backgroundColor: Colors.black54,
      body: ListView(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Discover",
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
            ],
          ),
          const Divider(
            color: Colors.grey,
            thickness: 1,
          ),
          recentlyViewed(context),
          exploreByTopic(context, topics),
          const SizedBox(
            height: 20,
          ),
          const SizedBox(
            height: 20,
          ),
          popular(context, topics),
          const SizedBox(
            height: 20,
          ),
          serviceSpotlight(context, topics),
          const SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
