import 'package:avu/screens/bottom.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';


class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Signup Screen'),
        backgroundColor: const Color(0xFF9E0044),
      ),
      body:  
      Container(
        color: Colors.grey[200],
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: double.infinity,
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
                      SizedBox(
                        width: screenWidth * 0.7,
                        height: 50,
                        child: const Text(
                          'Sign Up',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF9E0044),
                            fontSize: 30,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      TextField(
                        controller: nameController,
                        decoration: const InputDecoration(
                          labelText: 'Name',
                        ),
                      ),
                      const SizedBox(height: 16.0),
                      TextField(
                        controller: emailController,
                        decoration: const InputDecoration(
                          labelText: 'Email',
                        ),
                      ),
                      const SizedBox(height: 16.0),
                      TextField(
                        controller: passwordController,
                        obscureText: true,
                        decoration: const InputDecoration(
                          labelText: 'Password',
                        ),
                      ),
                      const SizedBox(height: 24.0),
                    ],
                  ),
                ),
              ),
ElevatedButton(
  onPressed: () async {
    try {
      // Validar la contraseña
      if (passwordController.text.length < 6) {
        // Mostrar un mensaje de error si la contraseña es demasiado corta
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('La contraseña debe tener al menos 6 caracteres.'),
          ),
        );
        return;
      }

      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );

      // Si la inscripción es exitosa, navegar a la pantalla de inicio
      // ignore: use_build_context_synchronously
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const BottomNavigationBarExample()),
      );
    } catch (e) {
      // Manejar errores de registro, por ejemplo, mostrar un mensaje de error
      // ignore: use_build_context_synchronously
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Error durante el registro: $e'),
        ),
      );
      print('Error durante el registro: $e');
    }
  },
  style: ElevatedButton.styleFrom(
    backgroundColor: const Color(0xFF9E0044),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(50),
    ),
  ),
  child: const Text('Sign Up'),
),


            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }
}
