import "package:flutter/material.dart";

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  // variable to keep track 0f the counter
  int _counter = 0;

  // method to update the counter
  void _incrementCounter() {
    // setstae is used for stateful widgets
    // it rebuilds the widget when state changes
    setState(
      () {
        _counter += 1;
      },
    );
  }

  // reset method to set counter to zero again
  void _resetCounter() {
    setState(
      () {
        _counter = 0;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[600],

      // appbar
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.grey[200]),
        backgroundColor: Colors.grey[800],
        title: Text(
          "quibler7",
          style: TextStyle(
            color: Colors.grey[200],
          ),
        ),
      ),

      // drawer for the aesthetics
      drawer: Drawer(
        backgroundColor: Colors.grey[600],
      ),

      // body
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // text
            Text(
              "You pushed the button this many times:",
              style: TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.grey[900]),
            ),

            // counter text
            Text(
              _counter.toString(),
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[900]),
            ),

            // to create some space between text and buttons
            const SizedBox(height: 25),

            // counter button
            ElevatedButton(
              onPressed: _incrementCounter,
              // to style the button
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  Colors.grey[800],
                ),
                foregroundColor: MaterialStateProperty.all(Colors.white),
              ),
              child: const Text("Press me :)"),
            ),

            // to create some space between text and buttons
            const SizedBox(height: 10),

            // reset button to reset the counter
            ElevatedButton(
              onPressed: _resetCounter,
              // to style the button
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  Colors.grey[800],
                ),
                foregroundColor: MaterialStateProperty.all(Colors.white),
              ),
              child: const Text("Reset"),
            ),
          ],
        ),
      ),

      // floating action button just for the aesthetics :)
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.grey[800],
        foregroundColor: Colors.grey[200],
        child: const Icon(Icons.favorite),
      ),
    );
  }
}
