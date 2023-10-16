import 'package:avu/screens/bottom.dart';
import 'package:avu/screens/password.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();

   
}

class _LogInState extends State<LogIn> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Screen'),
        backgroundColor: const Color(0xFF9E0044),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 700,
              height: 120,
              decoration: const ShapeDecoration(
                color: Color(0xFF9E0044),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(200),
                  ),
                ),
              ),
            ),
             Card(
              margin: const EdgeInsets.all(16.0),    
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(
                      width: 210,
                      height: 20,
                      child: Text(
                        'Iniciar Sesion',
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
                    TextField(
                      controller: emailController, // Add controller here
                      decoration: const InputDecoration(
                        labelText: 'Email',
                      ),
                    ),
                    const SizedBox(height: 16.0),
                    TextField(
                      controller: passwordController, // Add controller here
                      obscureText: true,
                      decoration: const InputDecoration(
                        labelText: 'Password',
                      ),
                    ),
                    const SizedBox(height: 24.0),

                     GestureDetector(
               onTap: () {
            // Navega a la pantalla ResetPasswordScreen cuando se toca el widget
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ResetPasswordScreen()),
            );
          },
              child: const Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: '¿Olvidaste tu contraseña?',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 10,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        height: 0.24,
                        letterSpacing: 0.15,
                      ),
                    ),
                    TextSpan(
                      text: ' ',
                      style: TextStyle(
                        color: Color(0xFF9E0044),
                        fontSize: 10,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        height: 0.24,
                        letterSpacing: 0.15,
                      ),
                    ),
                    TextSpan(
                      text: 'Click aquí',
                      style: TextStyle(
                        color: Color(0xFF9E0044),
                        fontSize: 10,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700,
                        height: 0.24,
                        letterSpacing: 0.15,
                      ),
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
              ),
                  ],
                ),
              ),
            ),
       ElevatedButton(
  onPressed: () async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );

      // Si el inicio de sesión es exitoso, navegar a la pantalla de inicio
      // ignore: use_build_context_synchronously
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const BottomNavigationBarExample()),
      );
    } catch (e) {
      // Manejar errores de inicio de sesión, por ejemplo, mostrar un mensaje de error
      String errorMessage = 'Error durante el inicio de sesión.';
      if (e is FirebaseAuthException) {
        if (e.code == 'user-not-found') {
          errorMessage = 'Usuario no encontrado. Regístrese primero.';
        } else if (e.code == 'wrong-password') {
          errorMessage = 'Contraseña incorrecta. Por favor, inténtelo de nuevo.';
        }
      }

      // ignore: use_build_context_synchronously
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(errorMessage),
        ),
      );
      print('Error durante el inicio de sesión: $e');
    }
  },
  style: ElevatedButton.styleFrom(
    backgroundColor: const Color(0xFF9E0044),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(50),
    ),
  ),
  child: const Text('Login'),
),

ElevatedButton(
  onPressed: () async {

      // ignore: use_build_context_synchronously
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const ResetPasswordScreen()),
      );
    
  },
  style: ElevatedButton.styleFrom(
    backgroundColor: const Color(0xFF9E0044),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(50),
    ),
  ),
  child: const Text('Login'),
),

          ],
        ),
      ),
    );
  }

 
}
