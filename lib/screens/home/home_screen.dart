import 'package:flutter/material.dart';
import '../../components/search_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static const String route = '';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
            children: const [
              SearchBar(),
              SearchBar()
            ],
          )
      ),
    );
  }
}
