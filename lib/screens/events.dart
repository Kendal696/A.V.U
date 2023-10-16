import 'package:flutter/material.dart';

class Events extends StatefulWidget {
  const Events({super.key});

  @override
  State<Events> createState() => _EventsState();
}

class _EventsState extends State<Events> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0), // Add margin
      width: double.infinity, 
      height: 100,
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            flex: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Mejorando Sistema de Salud',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18, // Increase font size
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  'Consideraciones de infraestructura',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12, // Increase font size
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            
          ),
          Flexible(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '28',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24, // Increase font size
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  'Sep',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12, // Increase font size
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          Flexible(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '19:30 Hrs',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14, // Increase font size
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          
        ],
      ),
    );
  }
}
