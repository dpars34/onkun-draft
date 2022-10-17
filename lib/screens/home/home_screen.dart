import 'dart:convert';

import 'package:flutter/material.dart';
import '../../components/search_bar.dart';
import 'package:http/http.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static const String route = '';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  void fetchKanji (String query) async {
    final kanjiRegex = RegExp(r"[一-龯]");
    List kanjiList = [];
    List responseList = [];
    try {
      for (var i = 0; i < query.length; i++) {
        if (kanjiRegex.hasMatch(query[i])) {
          kanjiList.add(query[i]);
        }
      }
      for (String kanji in kanjiList) {
        Response validationResponse = await get(Uri.parse('https://kanjiapi.dev/v1/kanji/$kanji'));
        dynamic data = jsonDecode(validationResponse.body);
        responseList.add(data);
      }
      print(responseList);
    } catch(e) {
      print(e);
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Image.asset('assets/onkun_logo4.png', height: 50),
        backgroundColor: Colors.white,
      ),
      body: Container(
          child: Column(
            children: [
              SearchBar(
                onSubmittedCallback: (val) => {
                  fetchKanji(val)
                },
              ),
            ],
          )
      ),
    );
  }
}
