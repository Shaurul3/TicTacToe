import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: HomePage()));
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isRed1 = true;
  bool isRed2 = true;
  bool isRed3 = true;
  bool isRed4 = true;
  bool isRed5 = true;
  bool isRed6 = true;
  bool isRed7 = true;
  bool isRed8 = true;
  bool isRed9 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('X and O'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        isRed1 = !isRed1;
                      });
                    },
                    child: Container(
                      height: 100,
                      color: isRed1 ? Colors.red : Colors.blue,
                      alignment: Alignment.center,
                      child: const Text('1'),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 12,
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        isRed2 = !isRed2;
                      });
                    },
                    child: Container(
                      height: 100,
                      color: isRed2 ? Colors.red : Colors.blue,
                      alignment: Alignment.center,
                      child: const Text('2'),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 12,
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        isRed3 = !isRed3;
                      });
                    },
                    child: Container(
                      height: 100,
                      color: isRed3 ? Colors.red : Colors.blue,
                      alignment: Alignment.center,
                      child: const Text('3'),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        isRed4 = !isRed4;
                      });
                    },
                    child: Container(
                      height: 100,
                      color: isRed4 ? Colors.red : Colors.blue,
                      alignment: Alignment.center,
                      child: const Text('1'),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 12,
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        isRed5 = !isRed5;
                      });
                    },
                    child: Container(
                      height: 100,
                      color: isRed5 ? Colors.red : Colors.blue,
                      alignment: Alignment.center,
                      child: const Text('2'),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 12,
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        isRed6 = !isRed6;
                      });
                    },
                    child: Container(
                      height: 100,
                      color: isRed6 ? Colors.red : Colors.blue,
                      alignment: Alignment.center,
                      child: const Text('3'),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        isRed7 = !isRed7;
                      });
                    },
                    child: Container(
                      height: 100,
                      color: isRed7 ? Colors.red : Colors.blue,
                      alignment: Alignment.center,
                      child: const Text('1'),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 12,
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        isRed8 = !isRed8;
                      });
                    },
                    child: Container(
                      height: 100,
                      color: isRed8 ? Colors.red : Colors.blue,
                      alignment: Alignment.center,
                      child: const Text('2'),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 12,
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        isRed9 = !isRed9;
                      });
                    },
                    child: Container(
                      height: 100,
                      color: isRed9 ? Colors.red : Colors.blue,
                      alignment: Alignment.center,
                      child: const Text('3'),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
