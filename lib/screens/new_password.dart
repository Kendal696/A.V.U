import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class NewPassword extends StatefulWidget {
  const NewPassword({Key? key}) : super(key: key);

  @override
  State<NewPassword> createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
  final _auth = FirebaseAuth.instance;
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  Future<void> changePassword() async {
    try {
      final user = _auth.currentUser;

      // Obtén las contraseñas ingresadas por el usuario
      final newPassword = _passwordController.text;
      final confirmPassword = _confirmPasswordController.text;

      // Verifica si las contraseñas coinciden
      if (newPassword == confirmPassword) {
        // Cambia la contraseña del usuario si coinciden
        await user!.updatePassword(newPassword);

        // ignore: use_build_context_synchronously
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Contraseña cambiada con éxito.'),
          ),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Las contraseñas no coinciden.'),
          ),
        );
      }
    } catch (e) {
      // ignore: use_build_context_synchronously
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Error al cambiar la contraseña: $e'),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cambiar Contraseña'),
        backgroundColor: const Color(0xFF9E0044),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 25),
            const SizedBox(
              width: 297,
              child: Text(
                'Nueva\nContraseña',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF9E0044),
                  fontSize: 30,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w700,
                  height: 1.2,
                ),
              ),
            ),
            const SizedBox(height: 20),
            const SizedBox(
              child: Text(
                'Ingresa tu nueva contraseña, de preferencia\nuna que te acuerdes Plis :)',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w700,
                  height: 1.4,
                ),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Nueva Contraseña',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16.0),
                ),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: _confirmPasswordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Confirmar Contraseña',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16.0),
                ),
              ),
            ),
            const SizedBox(height: 20),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: changePassword,
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF9E0044),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              child: const Text('Cambiar Contraseña'),
            ),
          ],
        ),
      ),
    );
  }
}
