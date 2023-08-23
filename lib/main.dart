import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Clinic Management Assistant',
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
  var _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    Widget page;
    switch (_selectedIndex) {
      case 0:
        page = const ResumoPage();
        break;
      case 1:
        page = const ConsultasPage();
        break;
      case 2:
        page = const PacientesPage();
        break;
      case 3:
        page = const DoutoresPage();
        break;
      case 4:
        page = const FuncionariosPage();
        break;
      case 5:
        page = const PagamentosPage();
        break;
      default:
        throw UnimplementedError("No widget for $_selectedIndex");
    }
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        body: Row(
          children: [
            SafeArea(
              child: NavigationRail(
                selectedIndex: _selectedIndex,
                groupAlignment: 0.0,
                extended: constraints.maxWidth >= 840,
                backgroundColor: Colors.black,
                destinations: const <NavigationRailDestination>[
                  NavigationRailDestination(
                    icon: Icon(Icons.dashboard_outlined),
                    selectedIcon: Icon(Icons.dashboard),
                    label: Text('R E S U M O'),
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 32),
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
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 32),
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
                onDestinationSelected: (int index) {
                  setState(() {
                    _selectedIndex = index;
                  });
                },
                selectedIconTheme: const IconThemeData(color: Colors.white),
                unselectedIconTheme: const IconThemeData(color: Colors.white),
                selectedLabelTextStyle:
                    const TextStyle(color: Colors.tealAccent),
                unselectedLabelTextStyle: const TextStyle(color: Colors.white),
              ),
            ),
            Expanded(
              child: Container(
                child: page,
              ),
            ),
          ],
        ),
      );
    });
  }
}

class ResumoPage extends StatelessWidget {
  const ResumoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("PAGINA RESUMO"),
    );
  }
}

class ConsultasPage extends StatelessWidget {
  const ConsultasPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("PAGINA CONSULTAS"),
    );
  }
}

class PacientesPage extends StatelessWidget {
  const PacientesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("PAGINA PACIENTES"),
    );
  }
}

class DoutoresPage extends StatelessWidget {
  const DoutoresPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("PAGINA DOUTORES"),
    );
  }
}

class FuncionariosPage extends StatelessWidget {
  const FuncionariosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("PAGINA FUNCIONARIOS"),
    );
  }
}

class PagamentosPage extends StatelessWidget {
  const PagamentosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("PAGINA PAGAMENTOS"),
    );
  }
}
