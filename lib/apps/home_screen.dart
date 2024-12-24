import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:weatherapp/constants/constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _cityController = TextEditingController();
  final Constants _constants = Constants();

  static String API_KEY = '65bb40a0741a4148ba425200242312';

  String location = 'Jakarta';
  String weatherIcon = 'heavycloudy.png';
  int temperature = 0;
  int humidity = 0;
  int windSpeed = 0;
  int cloud = 0;
  String currentDate = '';

  List hourlyWeatherForecast = [];
  List dailyWeatherForecast = [];

  String currentWeatherStatus = '';

  // API Call
  String searchWeatherAPI =
      'http://api.weatherapi.com/v1/current.json?key=${API_KEY}&days=7&q=';

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.green,
      body: Container(
        width: size.width,
        height: size.height,
        padding: const EdgeInsets.only(top: 70, left: 10, right: 10),
        color: _constants.primaryColor.withOpacity(.2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              height: size.height * .7,
              decoration: BoxDecoration(
                  gradient: _constants.linearGradientBlue,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: _constants.primaryColor.withOpacity(.6),
                      spreadRadius: 5,
                      blurRadius: 10,
                      offset: const Offset(0, 3),
                    )
                  ]),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/menu.png',
                          width: 35, height: 35),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset("assets/images/pin.png", width: 20),
                          const SizedBox(width: 3),
                          Text(location,
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 16)),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.keyboard_arrow_down,
                                  color: Colors.white, size: 20)),
                        ],
                      ),
                      ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            "assets/images/profile.jpg",
                            width: 35,
                            height: 35,
                          ))
                    ],
                  ),
                  SizedBox(
                    height: 160,
                    child: Image.asset('assets/images/$weatherIcon'),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text(
                          temperature.toString(),
                          style: TextStyle(
                              fontSize: 80,
                              fontWeight: FontWeight.bold,
                              foreground: Paint()..shader = _constants.shader),
                        ),
                      ),
                      Text('o',
                          style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              foreground: Paint()..shader = _constants.shader)),
                    ],
                  ),
                  Text(currentWeatherStatus,
                      style: TextStyle(color: Colors.white70, fontSize: 20)),
                  Text(currentDate,
                      style: TextStyle(color: Colors.white70, fontSize: 20)),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: const Divider(
                      color: Colors.white70,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
