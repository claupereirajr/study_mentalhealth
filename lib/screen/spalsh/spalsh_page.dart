import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class SplashPage extends StatefulWidget {
  static const String routeName = '/splash';
  const SplashPage({Key? key}) : super(key: key);

  static Route route() {
    return MaterialPageRoute(
        settings: const RouteSettings(name: routeName),
        builder: (_) => const SplashPage());
  }

  @override
  _SpalshPageState createState() => _SpalshPageState();
}

class _SpalshPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 4))
        .then((_) => Navigator.of(context).pushReplacementNamed('/'));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: const Center(
        child: RiveAnimation.asset(
          'assets/rive/man-test.riv',
          fit: BoxFit.fitWidth,
          animations: ['On'],
        ),
      ),
    );
  }
}
