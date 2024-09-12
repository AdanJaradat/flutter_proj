import 'package:ecommerce/view/pages/login.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _positionAnimation;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    _controller = AnimationController(
      duration: const Duration(seconds: 4),
      vsync: this,
    )..forward();

    // Define the position animation to move from the top to the center
    _positionAnimation = Tween<double>(begin: 0.0, end: 0.3).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeOut),
    );

    // Define the scale animation to scale up from 0.5x to 1x
    _scaleAnimation = Tween<double>(begin: 0.5, end: 1.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeOut),
    );
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage(
            'images/splash.jpg',
          ),
          fit: BoxFit.cover,
          opacity: 0.4,
        )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: AnimatedBuilder(
                  animation: _controller,
                  builder: (context, child) {
                    double screenHeight = MediaQuery.of(context).size.height;
                    double position = screenHeight * _positionAnimation.value;
                    return Stack(
                      children: [
                        Positioned(
                          top:
                              position, // Position the text based on the animation value
                          left: 0.0,
                          right: 0.0,
                          child: Transform.scale(
                            scale: _scaleAnimation
                                .value, // Apply scaling animation
                            child: Center(
                              child: Column(
                                children: [
                                  const CircleAvatar(
                                    radius: 60,
                                    backgroundImage:
                                        AssetImage('images/logo.jpg'),
                                  ),
                                  const SizedBox(height: 10),
                                  Text(
                                    'Vintage Home Furniture',
                                    style: GoogleFonts.lato(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FontStyle.italic,
                                        color: Colors.grey.shade800),
                                    // style: GoogleFonts.lobster(),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  }),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 35),
              //padding: EdgeInsets.all(40),
              // decoration: BoxDecoration(
              //   border: Border.all(width: 1),
              //   color: Colors.amber[800],
              // ),
              child: MaterialButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Login()));
                },
                color: Colors.amber[700],
                height: 50,
                minWidth: MediaQuery.of(context).size.width * 0.5,
                elevation: 9,
                child: Text('Next',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey.shade800)),
              ),
            )
            //!);
          ],
        ),
      ),
    );
  }
}
