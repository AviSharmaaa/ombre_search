import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ombre_search/state/app_state.dart';
import 'widgets/body.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    Future.microtask(() {
      Provider.of<AppState>(context, listen: false).loadEventsList();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFF0d111a),
      body: Body(),
    );
  }
}

