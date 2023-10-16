import 'package:flutter/material.dart';

class SuggestionsScreen extends StatelessWidget {
  const SuggestionsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Suggestions'),
        backgroundColor: const Color(0xFF9E0044),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: 45,
                color: const Color.fromARGB(255, 255, 255, 255),
              ),
              const Text(
                'Ayúdanos a Mejorar ',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF9E0044),
                  fontSize: 30,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w700,
                  height: 0.05,
                ),
              ),
              const SizedBox(height: 40),
              const Text(
                'Tu pregunta',
                style: TextStyle(
                  color: Color(0xFF9E0044),
                  fontSize: 20,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w700,
                  height: 1.5,
                ),
              ),
              const SizedBox(height: 5),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 2),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Escribe tu pregunta aquí...',
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Respuesta Sugerida',
                style: TextStyle(
                  color: Color(0xFF9E0044),
                  fontSize: 20,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w700,
                  height: 1.5,
                ),
              ),
              const SizedBox(height: 5),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 2),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Si tienes respuestas en mente, compártela aquí...',
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Tu contribución nos ayuda a mejorar y proporcionar información útil a toda la comunidad universitaria',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  height: 1.5,
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Handle button press
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF9E0044),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                child: const Text(
                  'Enviar',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                    height: 1.5,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
