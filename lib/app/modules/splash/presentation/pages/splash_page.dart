import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();

    Future.delayed(
      const Duration(seconds: 2),
      () {
        return context.go('/home');
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              top: 0,
              bottom: 80,
              left: 0,
              right: 0,
              child: FractionallySizedBox(
                widthFactor: 0.7,
                child: Image.asset(
                  'assets/images/common/pic_splash.png',
                  width: 300,
                ),
              ),
            ),
            Positioned(
              bottom: 250,
              left: 0,
              right: 0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 75),
                    child: LinearProgressIndicator(
                      borderRadius: BorderRadius.circular(10),
                      backgroundColor: Colors
                          .grey.shade200, // Warna latar belakang indicator
                      valueColor: const AlwaysStoppedAnimation<Color>(
                          Colors.blue), // Warna indicator
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
                bottom: 16,
                left: 0,
                right: 0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Image.asset(
                        'assets/images/common/common_app_icon.png',
                        width: 40,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Bilibili Comics',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                )),
          ],
        ),
      )),
    );
  }
}
