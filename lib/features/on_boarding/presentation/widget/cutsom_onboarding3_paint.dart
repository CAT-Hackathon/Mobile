import 'package:flutter/material.dart';

class CustomPainter3 extends CustomPainter {
    @override
    void paint(Canvas canvas, Size size) {
            
Path path_0 = Path();
    path_0.moveTo(size.width*0.4191467,size.height*-0.3114071);
    path_0.cubicTo(size.width*0.5686560,size.height*-0.3134612,size.width*0.7307467,size.height*-0.3351224,size.width*0.8549920,size.height*-0.2622988);
    path_0.cubicTo(size.width*0.9763627,size.height*-0.1911605,size.width*0.9894907,size.height*-0.04378000,size.width*1.063771,size.height*0.06642141);
    path_0.cubicTo(size.width*1.139899,size.height*0.1793605,size.width*1.278643,size.height*0.2631035,size.width*1.296933,size.height*0.3933553);
    path_0.cubicTo(size.width*1.316315,size.height*0.5313765,size.width*1.276059,size.height*0.6863059,size.width*1.164749,size.height*0.7855082);
    path_0.cubicTo(size.width*1.056037,size.height*0.8823976,size.width*0.8772133,size.height*0.8621859,size.width*0.7283840,size.height*0.9000659);
    path_0.cubicTo(size.width*0.5957947,size.height*0.9338141,size.width*0.4734800,size.height*1.017287,size.width*0.3376293,size.height*0.9960400);
    path_0.cubicTo(size.width*0.2010155,size.height*0.9746729,size.width*0.1092685,size.height*0.8690800,size.width*0.006695333,size.height*0.7871953);
    path_0.cubicTo(size.width*-0.09924800,size.height*0.7026212,size.width*-0.2485128,size.height*0.6339506,size.width*-0.2713627,size.height*0.5098871);
    path_0.cubicTo(size.width*-0.2941787,size.height*0.3859976,size.width*-0.1427307,size.height*0.2917035,size.width*-0.1069477,size.height*0.1701369);
    path_0.cubicTo(size.width*-0.06590267,size.height*0.03069459,size.width*-0.1613704,size.height*-0.1458661,size.width*-0.04771973,size.height*-0.2498918);
    path_0.cubicTo(size.width*0.06343387,size.height*-0.3516329,size.width*0.2585669,size.height*-0.3092000,size.width*0.4191467,size.height*-0.3114071);
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