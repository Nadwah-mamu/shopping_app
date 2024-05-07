import 'package:flutter/material.dart';

import '../Model/Pageview.dart';
import '../Model/bottomnavigtnbar.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const SnakeNavigation(),
      body: PageView1(),
    );
  }
}
