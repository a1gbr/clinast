import 'package:clinast/widgets/titulo_pagina.dart';
import 'package:flutter/material.dart';

// class ResumoPage extends StatelessWidget {
//   const ResumoPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.all(16),
//       child: const Column(
//         children: <Widget>[
//           TituloPagina("RESUMO", "Painel de Controle."),
//           Expanded(
//             child: Center(child: Text("DASHBOARD")),
//           )
//         ],
//       ),
//     );
//   }
// }

class ResumoPage extends StatelessWidget {
  const ResumoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            // First Row: 4 Blocks with Numbers
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                NumberBlock(value: 10),
                NumberBlock(value: 20),
                NumberBlock(value: 30),
                NumberBlock(value: 40),
              ],
            ),
            SizedBox(height: 16.0), // Add some spacing

            // Second Row: Bar Chart and Pie Chart Side by Side
            Row(
              children: <Widget>[
                Expanded(
                  child: NumberBlock(value: 10),
                ),
                Expanded(
                  child: NumberBlock(value: 10),
                ),
              ],
            ),
            SizedBox(height: 16.0), // Add some spacing

            // Third Row: List View
            Expanded(
              child: ListView.builder(
                itemCount: 20, // Number of items in the list
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text('Item $index'),
                    // Add more list item content as needed
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NumberBlock extends StatelessWidget {
  final int value;

  NumberBlock({required this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Text(
        '$value',
        style: TextStyle(
          color: Colors.white,
          fontSize: 24.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
