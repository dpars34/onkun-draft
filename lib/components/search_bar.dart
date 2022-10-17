import 'package:flutter/material.dart';

typedef StringCallback = void Function(String val);

class SearchBar extends StatefulWidget {
  const SearchBar({Key? key, required this.onSubmittedCallback}) : super(key: key);

  final StringCallback onSubmittedCallback;

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: TextField(
          textInputAction: TextInputAction.search,
          onSubmitted: (val) {
            widget.onSubmittedCallback(val);
          },
          decoration: InputDecoration(
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(100.0),
                borderSide: const BorderSide(
                    color: Color.fromRGBO(170, 170, 170, 1),
                    width: 1
                ),
            ),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(100.0),
                borderSide: const BorderSide(
                    color: Color.fromRGBO(170, 170, 170, 1),
                    width: 1
                )
            ),
            prefixIcon: Icon(Icons.search)
          ),
        ),
      )
    );
  }
}
