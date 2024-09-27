import 'dart:math';
import 'package:flutter/widgets.dart';
import 'package:get_it/get_it.dart';
import 'package:v_office_base/core/app_services/navigation_service.dart';

class GradientCircularProgressIndicator extends StatelessWidget {
  final double radius;
  final List<Color> gradientColors;
  final double strokeWidth;

  const GradientCircularProgressIndicator({
    Key? key,
    required this.radius,
    required this.gradientColors,
    this.strokeWidth = 4.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size.fromRadius(radius),
      painter: GradientCircularProgressPainter(
        radius: radius,
        gradientColors: gradientColors,
        strokeWidth: strokeWidth,
      ),
    );
  }
}

class GradientCircularProgressPainter extends CustomPainter {
  GradientCircularProgressPainter({
    required this.radius,
    required this.gradientColors,
    required this.strokeWidth,
  });
  final double radius;
  final List<Color> gradientColors;
  final double strokeWidth;

  @override
  void paint(Canvas canvas, Size size) {
    size = Size.fromRadius(radius);
    double offset = strokeWidth / 2;
    Rect rect = Offset(offset, offset) &
        Size(size.width - strokeWidth, size.height - strokeWidth);
    var paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth;
    paint.shader = SweepGradient(
            colors: gradientColors, startAngle: 0.0, endAngle: 1.5 * pi)
        .createShader(rect);
    canvas.drawArc(rect, 0.0, 1.5 * pi, false, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

class FullScreenLoader extends StatefulWidget {
  const FullScreenLoader({Key? key}) : super(key: key);

  @override
  _FullScreenLoaderState createState() => _FullScreenLoaderState();
}

class _FullScreenLoaderState extends State<FullScreenLoader>
    with TickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(duration: const Duration(seconds: 1), vsync: this);
    _animationController.repeat();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(color: Color.fromRGBO(0, 0, 0, 0.5)),
        child: Center(
          child: RotationTransition(
            turns: Tween(begin: 0.0, end: 1.0).animate(_animationController),
            child: const GradientCircularProgressIndicator(
              radius: 20,
              gradientColors: [
                Color.fromRGBO(234, 17, 127, 1),
                Color.fromRGBO(255, 90, 0, 1),
                Color.fromRGBO(250, 204, 30, 1),
              ],
              strokeWidth: 4.0,
            ),
          ),
        ));
  }
}

class LoadingOverlay {
  OverlayEntry? _overlay;

  LoadingOverlay();

  void showDialog() {
    final context = GetIt.instance<NavigationService>().navigatorContext;

    show(context);
  }

  void show(BuildContext context) {
    if (_overlay == null) {
      _overlay = OverlayEntry(
        builder: (context) => const FullScreenLoader(),
      );
      Overlay.of(context)!.insert(_overlay!);
    }
  }

  void hide() {
    if (_overlay != null) {
      _overlay!.remove();
      _overlay = null;
    }
  }
}
