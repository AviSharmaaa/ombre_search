import 'package:flutter/material.dart';

import '../../state/app_state.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({
    Key? key,
    required this.size,
    required this.controller,
    required this.provider,
  }) : super(key: key);

  final Size size;
  final TextEditingController controller;
  final AppState provider;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 15.0,
          ),
          child: SizedBox(
            width: size.width * .75,
            child: TextField(
              controller: controller,
              onChanged: (value) {
                provider.searchEvent(value);
              },
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 20,
              ),
              cursorWidth: 2.5,
              cursorColor: const Color(0xFF92475b),
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 15,
                ),
                hintText: "Search",
                hintStyle: const TextStyle(
                  color: Colors.white,
                ),
                filled: true,
                fillColor: const Color(0xFF263240).withOpacity(0.89),
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: const Color(0xFF263240).withOpacity(0.89),
                  ),
                  borderRadius: BorderRadius.circular(200),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: const Color(0xFF263240).withOpacity(0.89),
                  ),
                  borderRadius: BorderRadius.circular(200),
                ),
              ),
            ),
          ),
        ),
        InkWell(
          onTap: () {
            provider.searchEvent(controller.text);
          },
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(200),
              color: const Color(0xFF263240).withOpacity(0.89),
            ),
            width: 50,
            height: 50,
            child: const Icon(
              Icons.search_outlined,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
