import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/getweathercubit/get_weather_cubit.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.blue,
        title: const Text(
          "Search City",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Center(
          child: TextField(
            onSubmitted: (value) async {
              var getweathercubit = BlocProvider.of<GetWeatherCubit>(context);
              getweathercubit.fetchweather(cityname: value);
              Navigator.pop(context);
            },
            decoration: const InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 16, vertical: 32),
                hintText: "Enter City Name",
                suffixIcon: Icon(Icons.search),
                labelText: "Search",
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green))),
          ),
        ),
      ),
    );
  }
}
