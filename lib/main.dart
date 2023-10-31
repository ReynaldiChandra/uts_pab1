import 'package:flutter/material.dart';

void main() {
  runApp(const MainScreen());
}

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const ContentScreen(title: 'Flutter Demo Home Page'),
    );
  }
}

class ContentScreen extends StatefulWidget {
  const ContentScreen({super.key, required this.title});
  final String title;

  @override
  State<ContentScreen> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<ContentScreen> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 64.0),
              alignment: Alignment.center,
              child: const CircleAvatar(
                radius: 100,
                backgroundImage: NetworkImage(
                  'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.trip.com%2Fmoments%2Fdetail%2Fbandung-city-436-119120355%2F&psig=AOvVaw3jItaf_H29jsjFMgf28cTw&ust=1698815537237000&source=images&cd=vfe&opi=89978449&ved=0CBAQjRxqFwoTCIij5aXDn4IDFQAAAAAdAAAAABAE'),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            const Text(
              'Kawah Putih',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              'Bandung',
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 15,
            ),
            const SizedBox(
              height: 24,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Column (
                  children: [
                    Icon(
                      Icons.star,
                      size: 32.0,
                    ),
                    Text(
                      '4,5',
                      style: TextStyle(
                        fontSize: 22, fontWeight: FontWeight.bold
                      ),
                    ),
                  ],
                ),
                Container(
                  width: 1,
                  height: 36,
                  color: Colors.yellow,
                ),
                const Column(
                  children: [
                    Icon(
                      Icons.lock_clock,
                      color: Colors.black,
                      size: 32.0,
                    ),
                    Text(
                      'Open Everyday',
                      style: TextStyle(
                        fontSize: 32, fontWeight: FontWeight.bold
                      ),
                    ),
                  ],
                ),
                Container(
                  width: 1,
                  height: 36,
                  color: Colors.yellow,
                ),
                const Column(
                  children: [
                    Icon(
                      Icons.money,
                      color: Colors.green,
                      size: 32.0,
                    ),
                    Text(
                      'Free',
                      style: TextStyle(
                        fontSize: 32, fontWeight: FontWeight.bold
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            const Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                'Kawah Putih adalah tempat wisata di Bandung yang paling terkenal. Berlokasi di Ciwidey, Jawa Barat, kurang lebih sekitar 50 KM arah selatan kota Bandung, Kawah Putih adalah sebuah danau yang terbentuk akibat dari letusan Gunung Patuha. Sesuai dengan namanya, tanah yang ada di kawasan ini berwarna putih akibat dari pencampuran unsur belerang.',
              ),
              ),
            
          ),
      )
  ]
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
