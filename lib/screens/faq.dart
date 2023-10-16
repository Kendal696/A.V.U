import 'package:flutter/material.dart';

class FAQ extends StatefulWidget {
  const FAQ({super.key});

  @override
  State<FAQ> createState() => _FAQState();
}

class _FAQState extends State<FAQ> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(color: Colors.white),
          child: Column(
            children: [
              Container(
                height: 24,
                width: double.infinity,
                color: const Color(0xFFEDF0EF),
              ),
              Container(
  margin: const EdgeInsets.all(20.0), // Añade un margen de 16.0 en todos los lados
  child: const SizedBox(
    width: double.infinity,
    child: Text(
      'Preguntas y Respuestas',
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Color(0xFF9E0044),
        fontSize: 30,
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w700,
        height: 0.05,
      ),
    ),
  ),
),

               SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        // Agregar el comportamiento cuando se presiona el botón.
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.black, backgroundColor: Colors.white, // Color del texto del botón
                        side: const BorderSide(
                          color: Colors.black, // Color del contorno
                          width: 2.0, // Grosor del contorno
                        ),
                        padding: const EdgeInsets.all(16.0), // Espaciado dentro del botón
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0.0), // Borde del botón
                        ),
                      ),
                      child: const Text(
                        '¿Donde puedo encontrar un objeto perdido?',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          height: 1.5,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // Agregar el comportamiento cuando se presiona el botón.
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.black, backgroundColor: Colors.white, // Color del texto del botón
                        side: const BorderSide(
                          color: Colors.black, // Color del contorno
                          width: 2.0, // Grosor del contorno
                        ),
                        padding: const EdgeInsets.all(16.0), // Espaciado dentro del botón
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0.0), // Borde del botón
                        ),
                      ),
                      child: const Text(
                        '¿Averiguar sobre las becas disponibles?',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          height: 1.5,
                        ),
                      ),
                    ),
                    // Agrega más botones y textos según sea necesario
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
