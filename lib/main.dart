// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'SNK',
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(primarySwatch: Colors.blue,
//       ),
//       home: const MyHomePage(title: 'A propos de snk'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});
//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {


//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(

//         appBar: AppBar(
//           title: Center(
//             child: Text(
//               widget.title,
//               textAlign: TextAlign.center,
//               style: const TextStyle(
//                 fontSize: 22,
//                 color: Color.fromARGB(255, 255, 255, 255),
//               ),
//             ),
//           ),
//           backgroundColor: const Color.fromARGB(255, 174, 0, 255),
//         ),
//     );
//   }
// }

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, 
      home: Scaffold(

        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              const Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                     Text(
                      'Shingeki no Kyojin',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                     SizedBox(height: 50),
                     Text(
                      textAlign: TextAlign.center,
                      "Shingeki no Kyojin (SNK), ou Attack on Titan, est sans aucun doute l'un des meilleurs animes jamais créés. Avec un scénario époustouflant, des personnages profonds et un univers richement développé, SNK se distingue par son exploration complexe de thèmes tels que la liberté, la guerre et la survie. Depuis son lancement, il a captivé des millions de fans à travers le monde, grâce à des combats intenses, des révélations surprenantes et une atmosphère sombre. À travers ses saisons, l'anime nous emmène dans un voyage inoubliable, faisant de lui un incontournable dans le genre des séries d'animation. En somme, Shingeki no Kyojin mérite bien le titre de 'meilleur anime du monde'.",
                      style: TextStyle(fontSize: 18),
                    ),
                     SizedBox(height: 50),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.star, color:Color.fromARGB(255, 25, 119, 33)),
                        Icon(Icons.star, color:Color.fromARGB(255, 25, 119, 33)),
                        Icon(Icons.star, color:Color.fromARGB(255, 25, 119, 33)),
                        Icon(Icons.star, color:Color.fromARGB(255, 25, 119, 33)),
                        Icon(Icons.star, color:Color.fromARGB(255, 25, 119, 33)),
                        Icon(Icons.star, color:Color.fromARGB(255, 25, 119, 33)),
                        SizedBox(width: 50),
                        Text('1M Reviews'),
                      ],
                    ),
                     SizedBox(height: 50),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:  [
                        InfoCard(icon: Icons.timer, label: 'TEMPS DUN EP:', value: '25 min'),
                        InfoCard(icon: Icons.auto_awesome_motion_rounded, label: 'SAISONS:', value: '4'),
                        InfoCard(icon: Icons.poll, label: 'TOP:', value: '1-1'),
                      ],
                    ),
                  ],
                ),
              ),
              const Spacer(),
              
              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    Expanded(
                      child: Image.asset(
                        '../Assets/Images/snk.jpg', 
                        width: 500,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class InfoCard extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  const InfoCard({
    required this.icon,
    required this.label,
    required this.value,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: Colors.grey[700]),
        const SizedBox(width: 8),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(label, style: const TextStyle(fontWeight: FontWeight.bold)),
            Text(value, style: const TextStyle(color: Colors.grey)),
          ],
        ),
      ],
    );
  }
}

