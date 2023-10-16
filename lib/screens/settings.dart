import 'package:avu/main.dart';
import 'package:avu/screens/cuenta.dart';
import 'package:avu/screens/sugestions.dart';
import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool notificacionesValue = false; // Valor del checkbox de notificaciones
  bool reconocimientoFacialValue = false; // Valor del checkbox de reconocimiento facial
  bool temaSwitchValue = false; // Valor del switch de tema
  double volumenValue = 0.5; // Valor de ajuste de volumen

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(20.0),
          width: double.infinity,
          color: Colors.white,
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20,),
              const Text(
                'Configuración',
                style: TextStyle(
                  color: Color(0xFF9E0044),
                  fontSize: 30,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w700,
                  height: 0.05,
                ),
              ),
              const SizedBox(height: 70,),
              // Notificaciones
              Row(
                children: [
                  const SizedBox(
                    width: 261,
                    child: Text(
                      'Notificaciones',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        height: 1.5,
                      ),
                    ),
                  ),
                  Checkbox(
                    value: notificacionesValue,
                    onChanged: (bool? newValue) {
                      setState(() {
                        notificacionesValue = newValue!;
                      });
                    },
                  ),
                ],
              ),

              // Reconocimiento Facial
              Row(
                children: [
                  const SizedBox(
                    width: 261,
                    child: Text(
                      'Reconocimiento Facial',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        height: 1.5,
                      ),
                    ),
                  ),
                  Checkbox(
                    value: reconocimientoFacialValue,
                    onChanged: (bool? newValue) {
                      setState(() {
                        reconocimientoFacialValue = newValue!;
                      });
                    },
                  ),
                ],
              ),

              // Tema
              Row(
                children: [
                  const SizedBox(
                    width: 261,
                    child: Text(
                      'Tema',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        height: 1.5,
                      ),
                    ),
                  ),
                  Switch(
                    value: temaSwitchValue,
                    onChanged: (bool newValue) {
                      setState(() {
                        temaSwitchValue = newValue;
                      });
                    },
                  ),
                ],
              ),

              // Texto "Ajustar Volumen del Asistente de voz"
              const Text(
                'Ajustar Volumen del Asistente de voz',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  height: 1.5,
                ),
              ),

              // Barra para ajustar el volumen
              Slider(
                value: volumenValue,
                onChanged: (newValue) {
                  setState(() {
                    volumenValue = newValue;
                  });
                },
                activeColor: Colors.black, // Cambia esto al color que desees
              ),

              // Botón Sugerir Pregunta Frecuente
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const SuggestionsScreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF9E0044),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  child: const Text(
                    'Sugerir Pregunta Frecuente',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                      height: 0.09,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 170,),

              // Wrap the last two buttons in a Center widget
              Center(
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {
                        // Navegar a la pantalla de Cuenta aquí
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const ProfileScreen()),
                        );
                      },
                      child: Container(
                        width: 214,
                        height: 40,
                        padding: const EdgeInsets.symmetric(horizontal: 64, vertical: 8),
                        decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(width: 1.50, color: Color(0xFF9E0044)),
                            borderRadius: BorderRadius.circular(100),
                          ),
                        ),
                        child: const Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 189,
                              child: Text(
                                'Cuenta',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF9E0044),
                                  fontSize: 15,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                  height: 0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const MainApp()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF9E0044),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                      child: const SizedBox(
                        width: 189,
                        child: Text(
                          'Cerrar Sesión',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w700,
                            height: 0.09,
                          ),
                        ),
                      ),
                    ),
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