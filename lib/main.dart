import 'package:flutter/material.dart';

import 'pages/pg_consultas.dart';
import 'pages/pg_exames.dart';
import 'pages/pg_funcionarios.dart';
import 'pages/pg_medicos.dart';
import 'pages/pg_pacientes.dart';
import 'pages/pg_pagamentos.dart';
import 'pages/pg_resumo.dart';
import 'widgets/botao_navegacao.dart';
import 'widgets/shared/cores.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: acentuada),
      ),
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
  // INDEX DA NAVEGACAO
  var _selectedIndex = 0;
  // ESTADO DA NAVEGACAO
  bool _isExpanded = false;
  @override
  Widget build(BuildContext context) {
    Widget page;
    // PAGINA ATUAL
    switch (_selectedIndex) {
      case 0:
        page = const ResumoPage();
        break;
      case 1:
        page = const ExamesPage(
          colunas: [],
          itens: [],
        );
        break;
      case 2:
        page = const ConsultasPage(
          colunas: [],
          itens: [],
        );
        break;
      case 3:
        page = const PacientesPage(
          colunas: [],
          itens: [],
        );
        break;
      case 4:
        page = const MedicosPage(
          colunas: [],
          itens: [],
        );
        break;
      case 5:
        page = const FuncionariosPage(
          colunas: [],
          itens: [],
        );
        break;
      case 6:
        page = const PagamentosPage(
          colunas: [],
          itens: [],
        );
        break;
      default:
        throw UnimplementedError("No widget for $_selectedIndex");
    }
    return Scaffold(
      body: Row(
        children: <Widget>[
          NavigationRail(
            // INDEX ATUAL
            selectedIndex: _selectedIndex,

            // BOTAO NO TOPO DA NAVEGACAO
            leading: BotaoDeNavegacao(
              onPressed: () {
                setState(
                  () {
                    _isExpanded = !_isExpanded;
                  },
                );
              },
            ),

            extended: _isExpanded,
            labelType: NavigationRailLabelType.none,

            // ALINHAMENTO CENTRAL
            groupAlignment: 0.0,

            // COR TEMPORARIA
            backgroundColor: fundo,

            // DESTINOS DA NAVEGACAO
            destinations: const <NavigationRailDestination>[
              // DASHBOARD/RESUMO
              NavigationRailDestination(
                icon: Icon(Icons.dashboard_outlined),
                selectedIcon: Icon(Icons.dashboard),
                label: Text('R E S U M O'),

                // ESPACAMENTO PARA PROXIMA CATEGORIA
                padding: EdgeInsets.fromLTRB(0, 0, 0, 32),
              ),

              // EXAMES
              NavigationRailDestination(
                icon: Icon(Icons.monitor_heart_outlined),
                selectedIcon: Icon(Icons.monitor_heart),
                label: Text('E X A M E S'),
              ),

              // CONSULTAS
              NavigationRailDestination(
                icon: Icon(Icons.assignment_outlined),
                selectedIcon: Icon(Icons.assignment),
                label: Text('C O N S U L T A S'),

                // ESPACAMENTO PARA PROXIMA CATEGORIA
                padding: EdgeInsets.fromLTRB(0, 0, 0, 32),
              ),

              // PACIENTES
              NavigationRailDestination(
                icon: Icon(Icons.personal_injury_outlined),
                selectedIcon: Icon(Icons.personal_injury),
                label: Text('P A C I E N T E S'),
              ),

              // DOUTORES
              NavigationRailDestination(
                icon: Icon(Icons.local_hospital_outlined),
                selectedIcon: Icon(Icons.local_hospital),
                label: Text('M É D I C O S'),

                // ESPACAMENTO PARA PROXIMA CATEGORIA
                padding: EdgeInsets.fromLTRB(0, 0, 0, 32),
              ),

              // FUNCIONARIOS
              NavigationRailDestination(
                icon: Icon(Icons.badge_outlined),
                selectedIcon: Icon(Icons.badge),
                label: Text('F U N C I O N Á R I O S'),
              ),

              // PAGAMENTOS
              NavigationRailDestination(
                icon: Icon(Icons.payments_outlined),
                selectedIcon: Icon(Icons.payments),
                label: Text('P A G A M E N T O S'),
              ),
            ],

            // MUDANCA DE INDEX BASEADO NO DESTINO
            onDestinationSelected: (value) {
              setState(
                () {
                  _selectedIndex = value;
                },
              );
            },

            // CORES DA NAVEGACAO --TEMPORARIO
            selectedIconTheme: const IconThemeData(
              color: fundo,
            ),
            unselectedIconTheme: const IconThemeData(
              color: branco,
            ),
            selectedLabelTextStyle: const TextStyle(
              color: acentuada,
            ),
            unselectedLabelTextStyle: const TextStyle(
              color: branco,
            ),
          ),

          // DIVISOR VERTICAL
          const VerticalDivider(
            thickness: 1,
            width: 1,
            color: fundo,
          ),

          // CORPO DO SOFTWARE
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),

              // PAGINA ATUAL
              child: page,
            ),
          ),
        ],
      ),
    );
  }
}
