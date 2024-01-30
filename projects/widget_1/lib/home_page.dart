import 'package:flutter/material.dart';

class MyObject {
  int _value;

  MyObject({
    required int value,
  }) : _value = value;

  // Phương thức tăng giá trị
  void increase() {
    _value++;
  }

  // Phương thức giảm giá trị
  void decrease() {
    _value--;
  }

  // Phương thức trả giá trị
  int get value => _value;

  // Phương thức đặt giá trị
  set value(int newValue) {
    _value = newValue;
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  MyObject _myObject = MyObject(value: 0);
  String? title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back_outlined),
        title: const Text('My App'),
        backgroundColor: Colors.lightBlueAccent,
        actions: const [
          Icon(Icons.notifications),
          Icon(Icons.settings),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Value',
              style: TextStyle(
                fontSize: 24,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      _myObject.decrease(); // giảm giá trị xuống 1
                    });
                  },
                  icon: const Icon(Icons.remove),
                ),
                Text(
                  '${_myObject.value}',
                  style: const TextStyle(
                    fontSize: 24,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      _myObject.increase(); // tăng giá trị lên 1
                    });
                  },
                  icon: const Icon(Icons.add),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
