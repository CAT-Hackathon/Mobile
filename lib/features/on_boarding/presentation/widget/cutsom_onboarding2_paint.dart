import 'package:flutter/material.dart';

class CustomPainter2 extends CustomPainter {
    @override
    void paint(Canvas canvas, Size size) {
            
Path path_0 = Path();
    path_0.moveTo(size.width*0.5921733,size.height*-0.2194719);
    path_0.cubicTo(size.width*0.7279520,size.height*-0.1823998,size.width*0.8816320,size.height*-0.1598955,size.width*0.9696187,size.height*-0.06124775);
    path_0.cubicTo(size.width*1.055568,size.height*0.03511868,size.width*1.018299,size.height*0.1726896,size.width*1.048680,size.height*0.2923475);
    path_0.cubicTo(size.width*1.079813,size.height*0.4149787,size.width*1.177264,size.height*0.5273428,size.width*1.150368,size.height*0.6506667);
    path_0.cubicTo(size.width*1.121869,size.height*0.7813499,size.width*1.033845,size.height*0.9118889,size.width*0.9002027,size.height*0.9731939);
    path_0.cubicTo(size.width*0.7696773,size.height*1.033069,size.width*0.6148347,size.height*0.9680946,size.width*0.4677307,size.height*0.9638109);
    path_0.cubicTo(size.width*0.3366773,size.height*0.9599953,size.width*0.1983312,size.height*1.004116,size.width*0.08266400,size.height*0.9493901);
    path_0.cubicTo(size.width*-0.03365173,size.height*0.8943593,size.width*-0.08134960,size.height*0.7743452,size.width*-0.1467339,size.height*0.6730946);
    path_0.cubicTo(size.width*-0.2142667,size.height*0.5685177,size.width*-0.3262453,size.height*0.4671324,size.width*-0.3055307,size.height*0.3482530);
    path_0.cubicTo(size.width*-0.2848480,size.height*0.2295402,size.width*-0.1165709,size.height*0.1831553,size.width*-0.04371333,size.height*0.08182080);
    path_0.cubicTo(size.width*0.03985840,size.height*-0.03441489,size.width*0.01245603,size.height*-0.2199941,size.width*0.1498251,size.height*-0.2850827);
    path_0.cubicTo(size.width*0.2841760,size.height*-0.3487400,size.width*0.4463440,size.height*-0.2592884,size.width*0.5921733,size.height*-0.2194719);
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