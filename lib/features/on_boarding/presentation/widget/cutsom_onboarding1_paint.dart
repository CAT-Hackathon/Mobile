import 'package:flutter/material.dart';

class CustomPainter1 extends CustomPainter {
    @override
    void paint(Canvas canvas, Size size) {
            
Path path_0 = Path();
    path_0.moveTo(-38.6551,-12.7445);
    path_0.cubicTo(-3.28532,-56.2551,28.7345,-108.736,82.3919,-124.533);
    path_0.cubicTo(134.808,-139.965,185.955,-103.474,239.738,-94.7067);
    path_0.cubicTo(294.857,-85.722,355.566,-102.702,402.38,-72.3736);
    path_0.cubicTo(451.988,-40.2358,492.724,13.6537,498.191,72.7294);
    path_0.cubicTo(503.53,130.427,453.845,176.276,430.304,229.378);
    path_0.cubicTo(409.331,276.686,407.023,334.626,367.359,367.847);
    path_0.cubicTo(327.473,401.255,270.98,398.764,219.597,405.86);
    path_0.cubicTo(166.525,413.19,108.188,437.309,62.2891,409.98);
    path_0.cubicTo(16.455,382.69,22.261,313.424,-8.69176,269.935);
    path_0.cubicTo(-44.1962,220.051,-124.691,199.242,-131.164,138.175);
    path_0.cubicTo(-137.494,78.4505,-76.6435,33.9874,-38.6551,-12.7445);
    path_0.close();

Paint paint_0_fill = Paint()..style=PaintingStyle.fill;
paint_0_fill.color = Color(0xff94B8E2).withOpacity(1.0);
canvas.drawPath(path_0,paint_0_fill);

}

@override
bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
}
}