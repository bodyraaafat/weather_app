import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/getweathercubit/get_weather_cubit.dart';

class Weatherinfo extends StatelessWidget {
  const Weatherinfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var weathermodel = BlocProvider.of<GetWeatherCubit>(context).weatherModel;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Weather App",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              weathermodel.cityname,
              style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            Text(
              "updated at ${weathermodel.date.hour}:${weathermodel.date.minute}",
              style: const TextStyle(fontSize: 24),
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset("assets/images/cloudy.png"),
                Text(
                  weathermodel.temp.toString(),
                  style: const TextStyle(fontSize: 32),
                ),
                Column(
                  children: [
                    Text(
                      "maxTemp:${weathermodel.maxtemp.round()}",
                      style: const TextStyle(fontSize: 17),
                    ),
                    Text(
                      "minTemp:${weathermodel.mintemp.round()}",
                      style: const TextStyle(fontSize: 17),
                    )
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 9,
            ),
            Text(
              weathermodel.weathercondition,
              style: const TextStyle(fontSize: 31, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
