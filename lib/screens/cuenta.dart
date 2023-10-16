import 'package:avu/screens/new_password.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        width: screenWidth,
        height: screenHeight,
        clipBehavior: Clip.antiAlias,
        decoration: const BoxDecoration(color: Colors.white),
        child: Stack(
          children: [
            Positioned(
              left: 0,
              top: 0,
              child: SizedBox(
                width: screenWidth,
                height: screenHeight * 0.031,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Container(
                        width: screenWidth,
                        height: screenHeight * 0.031,
                        decoration: const BoxDecoration(color: Color(0xFFEDF0EF)),
                      ),
                    ),
                    Positioned(
                      left: screenWidth - (screenWidth * 0.128),
                      top: screenHeight * 0.009,
                      child: SizedBox(
                        width: screenWidth * 0.128,
                        height: screenHeight * 0.013,
                        // Ajusta aquí el contenido del icono de inicio de sesión
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: screenWidth * 0.103,
              top: screenHeight * 0.974,
              child: Text(
                'Home',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: screenWidth * 0.027,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w700,
                  height: 0.20,
                ),
              ),
            ),
            Positioned(
              left: screenWidth * 0.25,
              top: screenHeight * 0.112,
              child: Container(
                width: screenWidth * 0.556,
                height: screenWidth * 0.556,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage("https://icons.veryicon.com/png/o/internet--web/prejudice/user-128.png"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            Positioned(
              left: screenWidth * 0.132,
              top: screenHeight * 0.463,
              child: Text(
                '[Nombre Completo]',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: screenWidth * 0.043,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  height: 0.09,
                ),
              ),
            ),
            Positioned(
              left: screenWidth * 0.132,
              top: screenHeight * 0.563,
              child: Text(
                '[Carrera]',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: screenWidth * 0.043,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  height: 0.09,
                ),
              ),
            ),
            Positioned(
              left: screenWidth * 0.132,
              top: screenHeight * 0.613,
              child: Text(
                '[Correo Institucional]',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: screenWidth * 0.043,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  height: 0.09,
                ),
              ),
            ),
            Positioned(
              left: screenWidth * 0.13,
              top: screenHeight * 0.513,
              child: Text(
                '[ID Estudiante]',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: screenWidth * 0.043,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  height: 0.09,
                ),
              ),
            ),
            const SizedBox(height: 20.0), // Ajusta el espacio

            Positioned(
              left: screenWidth * 0.25, // Ajusta la posición horizontal
              top: screenHeight * 0.713, // Ajusta la posición vertical
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF9E0044),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const NewPassword()),
                  );
                },
                child: const Text('Change Password'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
