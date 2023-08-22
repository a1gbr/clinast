import 'package:flutter/material.dart';

void main() {
  runApp(const ClinAst());
}

class ClinAst extends StatelessWidget {
  const ClinAst({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ClinAst',
      theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.teal)),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // index da página a ser usada
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: <Widget>[
          // criação da nav rail (painel lateral)
          NavigationRail(
            selectedIndex: _selectedIndex,
            groupAlignment: 0.0,
            onDestinationSelected: (int index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            extended: true,
            labelType: NavigationRailLabelType.none,
            backgroundColor: Colors.black,
            destinations: const <NavigationRailDestination>[
              // navigation destinations
              NavigationRailDestination(
                icon: Icon(Icons.dashboard_outlined),
                selectedIcon: Icon(Icons.dashboard),
                label: Text('R E S U M O'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.monitor_heart_outlined),
                selectedIcon: Icon(Icons.monitor_heart),
                label: Text('C O N S U L T A S'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.personal_injury_outlined),
                selectedIcon: Icon(Icons.personal_injury),
                label: Text('P A C I E N T E S'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.local_hospital_outlined),
                selectedIcon: Icon(Icons.local_hospital),
                label: Text('D O U T O R E S'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.badge_outlined),
                selectedIcon: Icon(Icons.badge),
                label: Text('F U N C I O N Á R I O S'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.payments_outlined),
                selectedIcon: Icon(Icons.payments),
                label: Text('P A G A M E N T O S'),
              ),
            ],
            selectedIconTheme: const IconThemeData(color: Colors.white),
            unselectedIconTheme: const IconThemeData(color: Colors.white),
            selectedLabelTextStyle: const TextStyle(color: Colors.tealAccent),
            unselectedLabelTextStyle: const TextStyle(color: Colors.white),
          ),
          Expanded(
            child: Center(
              child: Text('PAGE #: $_selectedIndex'),
            ),
          )
        ],
      ),
    );
  }
}
