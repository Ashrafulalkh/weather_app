import 'package:flutter/material.dart';

class HourlyForecastListview extends StatelessWidget {
  const HourlyForecastListview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 15,
      itemBuilder: (context, index) {
        return Container(
          width: MediaQuery.of(context).size.width * 0.25,
          margin: const EdgeInsets.symmetric(horizontal: 2.0, vertical: 25.0),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('29 June',style: TextStyle(color: Colors.white),),
              SizedBox(height: 6),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.radar,color: Colors.white,),
                  SizedBox(width: 6),
                  Text('19°C',style: TextStyle(color: Colors.white),),
                ],
              ),
              SizedBox(height: 6),
              Text('Sunflower',style: TextStyle(color: Colors.white),),
            ],
          ),
        );
      },
    );
  }
}