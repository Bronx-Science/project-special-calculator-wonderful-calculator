import 'package:flutter/material.dart';
import 'package:better_calculator/calculator_view.dart';

class NavDrawer extends StatelessWidget {
  const NavDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Drawer(
    child : Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        buildHeader(context),
        buildMenuItems(context),
      ],
    )
  );
  Widget buildHeader(BuildContext context) => Container(
    padding: EdgeInsets.only(
      top: MediaQuery.of(context).padding.top,
    ),  
  );

  // ignore: avoid_unnecessary_containers
  Widget buildMenuItems(BuildContext context) => Column(
    children: [
      ListTile(
        leading: const Icon(Icons.calculate_outlined),
        title: const Text('Default Calculator'),
        onTap: () => Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const CalculatorView())),
    ),
      ListTile(
        leading: const Icon(Icons.money_outlined),
        title: const Text('Income Tax'),
        onTap: () => Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const IncomeTaxView(title: '',))),
      ),
    ],
  );
}