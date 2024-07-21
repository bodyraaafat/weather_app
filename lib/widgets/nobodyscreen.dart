import 'package:flutter/material.dart';
import 'package:weather_app/views/search_view.dart';

class NobodyScreen extends StatelessWidget {
  const NobodyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          "Weather App",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const SearchView();
              }));
            },
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      body: const Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "there is no weather 😔 start",
              style: TextStyle(fontSize: 30),
            ),
            Text(
              "searching now 🔍",
              style: TextStyle(fontSize: 30),
            )
          ],
        ),
      ),
    );
  }
}
