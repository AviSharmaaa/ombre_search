import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../models/events_model.dart';
import '../../state/app_state.dart';
import 'list_card.dart';
import 'search_widget.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final TextEditingController _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Consumer<AppState>(builder: (context, provider, child) {
      if (!provider.isDataLoaded) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      } else {
        List<EventsModel> event = (provider.searchResults.isEmpty)
            ? provider.eventsList
            : provider.searchResults;
        return Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 20,
          ),
          child: Column(
            children: [
              const SizedBox(
                height: 15,
              ),
              SearchWidget(
                size: size,
                controller: _controller,
                provider: provider,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: event.length,
                  itemBuilder: (context, index) {
                    String tags = "";
                    for (String tag in event[index].eventTags!) {
                      tags += "$tag | ";
                    }
                    return ListCard(
                      event: event[index],
                      tags: tags,
                    );
                  },
                ),
              ),
            ],
          ),
        );
      }
    });
  }
}
