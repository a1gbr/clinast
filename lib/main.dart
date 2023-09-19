import 'package:clinast/presentation/screens/pg_admin_resumo.dart';
import 'package:clinast/presentation/screens/pg_login.dart';
import 'package:clinast/presentation/screens/pg_resumo.dart';
import 'package:flutter/material.dart';

import 'domain/utils/fake_database/db_exames.dart';
import 'domain/utils/fake_database/db_medicos.dart';
import 'domain/utils/fake_database/db_pacientes.dart';
import 'domain/utils/fake_database/gerador.dart';
import 'presentation/screens/pg_consultas.dart';
import 'presentation/screens/pg_exames.dart';
import 'presentation/screens/pg_funcionarios.dart';
import 'presentation/screens/pg_medicos.dart';
import 'presentation/screens/pg_pacientes.dart';
import 'presentation/screens/pg_pagamentos.dart';
import 'presentation/widgets/botao_navegacao.dart';
import 'presentation/widgets/shared/cores.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: gerador(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return MaterialApp(
            title: 'Clinic Management Assistant',
            theme: ThemeData(
              useMaterial3: true,
              colorScheme: ColorScheme.fromSeed(seedColor: acentuada),
            ),
            home: const AuthenticationWrapper(),
          );
        } else {
          return const CircularProgressIndicator();
        }
      },
    );
  }
}

class AuthenticationWrapper extends StatefulWidget {
  const AuthenticationWrapper({Key? key}) : super(key: key);

  @override
  State<AuthenticationWrapper> createState() => _AuthenticationWrapperState();
}

class _AuthenticationWrapperState extends State<AuthenticationWrapper> {
  bool isAuthenticated = false;
  bool isAdmin = false;

  void authenticateUser() {
    /**
     * LOGICA DE AUTENTICACAO
     */
    setState(
      () {
        isAuthenticated = true;
        isAdmin = false;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    /**
     * SE O USUARIO ESTIVER AUTENTICADO, RETORNA A PAGINA PRINCIPAL
     */
    return isAuthenticated
        ? MyHomePage(isAdmin: isAdmin)
        : LoginPage(onLogin: authenticateUser);
  }
}

class MyHomePage extends StatefulWidget {
  final bool isAdmin;
  const MyHomePage({Key? key, required this.isAdmin}) : super(key: key);

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
        (widget.isAdmin)
            ? page = const AdminResumoPage()
            : page = const ResumoPage();
        break;
      case 1:
        page = ExamesPage(
          colunas: const [],
          itens: exames,
        );
        break;
      case 2:
        page = const ConsultasPage(
          colunas: [],
          itens: [],
        );
        break;
      case 3:
        page = PacientesPage(
          colunas: const [],
          itens: pacientes,
        );
        break;
      case 4:
        page = MedicosPage(
          colunas: const [],
          itens: medicos,
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
