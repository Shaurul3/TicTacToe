import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: HomePage()));
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Color> buttonColors = List<Color>.filled(9, Colors.blue);
  List<String> buttonValues = List<String>.filled(9, '');
  bool isPlayer1 = true;

  void checkWinner() {
    final List<List<int>> winningConditions = <List<int>>[
      <int>[0, 1, 2],
      <int>[3, 4, 5],
      <int>[6, 7, 8],
      <int>[0, 3, 6],
      <int>[1, 4, 7],
      <int>[2, 5, 8],
      <int>[0, 4, 8],
      <int>[2, 4, 6]
    ];

    for (final List<int> condition in winningConditions) {
      if (buttonValues[condition[0]] != '' &&
          buttonValues[condition[0]] == buttonValues[condition[1]] &&
          buttonValues[condition[0]] == buttonValues[condition[2]]) {
        showDialog<void>(
          context: context,
          builder: (_) => AlertDialog(
            title: Text('${buttonValues[condition[0]]} wins!'),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                  resetGame();
                },
                child: const Text('Play Again'),
              ),
            ],
          ),
        );
        return;
      }
    }

    // Check for a draw
    if (!buttonValues.contains('')) {
      showDialog<void>(
        context: context,
        builder: (_) => AlertDialog(
          title: const Text("It's a draw!"),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                resetGame();
              },
              child: const Text('Play Again'),
            ),
          ],
        ),
      );
    }
  }

  void resetGame() {
    setState(() {
      buttonColors = List<Color>.filled(9, Colors.blue);
      buttonValues = List<String>.filled(9, '');
      isPlayer1 = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Tic Tac Toe'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: <Widget>[
            GridView.builder(
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 4.0,
                crossAxisSpacing: 4.0,
              ),
              itemCount: 9,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    if (buttonValues[index] == '') {
                      setState(() {
                        if (isPlayer1) {
                          buttonValues[index] = 'Red';
                          buttonColors[index] = Colors.red;
                        } else {
                          buttonValues[index] = 'Green';
                          buttonColors[index] = Colors.green;
                        }
                        isPlayer1 = !isPlayer1;
                        checkWinner();
                      });
                    }
                  },
                  child: Container(
                    color: buttonColors[index],
                    alignment: Alignment.center,
                    child: const Text(''),
                  ),
                );
              },
            ),
            ElevatedButton(
              onPressed: resetGame,
              child: const Text('Reset Game'),
            ),
          ],
        ),
      ),
    );
  }
}
