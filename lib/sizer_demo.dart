import 'package:flutter/material.dart';

class SizerDemo extends StatelessWidget {
  const SizerDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white38,
      body: SafeArea(
        child: Column(
          children: [
            Container(

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.black38,
              ),
              height: 300,
              width: double.infinity,
              child: ClipRRect(

                child: ClipPath(
                  clipBehavior: Clip.hardEdge,
                  clipper: RPSCustomPainter(),
                  child: Container(
                    color: Colors.blue, // The clipped widget
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RPSCustomPainter extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width*-0.0006833,size.height*0.4324000);
    path_0.lineTo(size.width*0.0006667,size.height*0.9987143);
    path_0.lineTo(size.width*0.9985583,size.height*0.9990714);
    path_0.lineTo(size.width*1.0008250,size.height*-0.0020000);
    path_0.lineTo(size.width*0.3322500,size.height*-0.0030143);
    path_0.quadraticBezierTo(size.width*0.2740500,size.height*0.0230000,size.width*0.2554250,size.height*0.1084857);
    path_0.cubicTo(size.width*0.2237833,size.height*0.2441429,size.width*0.1357667,size.height*0.3287571,size.width*0.0599917,size.height*0.3641429);
    path_0.quadraticBezierTo(size.width*0.0173167,size.height*0.3840714,size.width*-0.0018583,size.height*0.4347429);
    return path_0;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false; // Always reclip when widget updates
  }
}
