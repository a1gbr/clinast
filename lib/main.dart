import 'package:flutter/material.dart';

import 'pages/conulstas_page.dart';
import 'pages/doutores_page.dart';
import 'pages/funcionarios_page.dart';
import 'pages/pacientes_page.dart';
import 'pages/pagamentos_page.dart';
import 'pages/resumo_page.dart';
import 'widgets/botao_menu_nav.dart';

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
          colorScheme: ColorScheme.fromSwatch(
              primarySwatch: Colors.teal /*cor principal, temporaria*/)),
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
  // _selectedIndex representa o valor que será usado para diferenciar qual página deve ser exibida
  var _selectedIndex = 0;
  bool _isExpanded = false;
  @override
  Widget build(BuildContext context) {
    Widget page;
    // recebendo o valor do index e referenciando qual página deve ser representada pelo widget 'page'
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
    return Scaffold(
      body: Row(
        children: <Widget>[
          NavigationRail(
            selectedIndex: _selectedIndex,
            leading: NavigationRailMenuButton(
              onPressed: () {
                setState(() {
                  _isExpanded = !_isExpanded;
                });
              },
            ),
            groupAlignment: 0.0,
            extended: _isExpanded,
            labelType: NavigationRailLabelType.none,
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
            onDestinationSelected: (value) {
              setState(() {
                _selectedIndex = value;
              });
            },
            selectedIconTheme: const IconThemeData(color: Colors.white),
            unselectedIconTheme: const IconThemeData(color: Colors.white),
            selectedLabelTextStyle: const TextStyle(color: Colors.tealAccent),
            unselectedLabelTextStyle: const TextStyle(color: Colors.white),
          ),
          const VerticalDivider(
            thickness: 1,
            width: 1,
            color: Colors.cyan,
          ),
          Expanded(
            child: Container(
              // page agr é uma referencia para o statelesswidget q foi construida a pagina desejada
              child: page,
            ),
          ),
        ],
      ),
    );
  }
}
