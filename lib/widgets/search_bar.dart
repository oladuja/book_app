import 'package:flutter/material.dart';

import '../helper/log.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({
    super.key,
  });

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: const Color(0XFFD8E8FD).withOpacity(0.45),
            offset: const Offset(0, 6),
            blurRadius: 18,
          )
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
          controller: controller,
          onSubmitted: (value) {
            logger.i(value);
            controller.clear();
          },
          keyboardType: TextInputType.text,
          textInputAction: TextInputAction.search,
          cursorColor: Colors.grey,
          enabled: true,
          decoration: const InputDecoration(
            isDense: true,
            hintText: 'Type book name or author',
            hintStyle: TextStyle(
              color: Colors.grey,
              fontSize: 14,
            ),
            suffixIcon: Icon(
              Icons.search,
              color: Colors.grey,
              size: 24,
            ),
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
