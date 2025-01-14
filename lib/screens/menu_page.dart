import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset('assets/images/practicas-image.png'),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton.icon(
                    onPressed: () {
                      Navigator.pushNamed(context, '/contador');
                    },
                    icon: const Icon(Icons.alarm_add_rounded),
                    label: const Text("Ir contador"),
                  ),
                  ElevatedButton(
                    onPressed: () => Navigator.of(context).pushNamed('/carnet'),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Icon(Icons.assignment_ind_outlined),
                        SizedBox(width: 10),
                        Text("Ir a Carnet"),
                      ],
                    ),
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      Navigator.pushNamed(context, '/news_page');
                    },
                    icon: const Icon(Icons.data_array),
                    label: const Text("Lectura JSON"),
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      Navigator.pushNamed(context, '/fotos');
                    },
                    icon: const Icon(Icons.image),
                    label: const Text("Consumir API"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
