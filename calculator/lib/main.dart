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
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: const Icon(Icons.calculate),
          title: const Text('Flutter Calculator'),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 15),
              Column(
                children: [
                  Container(
                    height: 160,
                    width: double.infinity,
                    margin: const EdgeInsets.only(left: 15, right: 15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(width: 2, color: Colors.blueGrey),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderSide: const BorderSide(width: 2),
                            borderRadius: BorderRadius.circular(12)),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      RoundedButtons(
                        number: 'AC',
                        onpressed: () {},
                      ),
                      RoundedButtons(
                        number: '( )',
                        onpressed: () {},
                      ),
                      RoundedButtons(
                        number: '%',
                        onpressed: () {},
                      ),
                      RoundedButtons(
                        number: '/',
                        onpressed: () {},
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      RoundedButtons(
                        number: '7',
                        onpressed: () {},
                      ),
                      RoundedButtons(
                        number: '8',
                        onpressed: () {},
                      ),
                      RoundedButtons(
                        number: '9',
                        onpressed: () {},
                      ),
                      RoundedButtons(
                        number: 'X',
                        onpressed: () {},
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      RoundedButtons(
                        number: '4',
                        onpressed: () {},
                      ),
                      RoundedButtons(
                        number: '5',
                        onpressed: () {},
                      ),
                      RoundedButtons(
                        number: '6',
                        onpressed: () {},
                      ),
                      RoundedButtons(
                        number: '-',
                        onpressed: () {},
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      RoundedButtons(
                        number: '1',
                        onpressed: () {},
                      ),
                      RoundedButtons(
                        number: '2',
                        onpressed: () {},
                      ),
                      RoundedButtons(
                        number: '3',
                        onpressed: () {},
                      ),
                      RoundedButtons(
                        number: '+',
                        onpressed: () {},
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      RoundedButtons(
                        number: '0',
                        onpressed: () {},
                      ),
                      RoundedButtons(
                        number: '.',
                        onpressed: () {},
                      ),
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.backspace_rounded),
                        ),
                      ),
                      RoundedButtons(
                        number: '=',
                        onpressed: () {},
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RoundedButtons extends StatelessWidget {
  final String number;
  final void Function()? onpressed;
  const RoundedButtons({
    required this.onpressed,
    required this.number,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
      decoration: BoxDecoration(
        color: Colors.blue.shade400,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(30),
      ),
      child: TextButton(
        isSemanticButton: true,
        style: const ButtonStyle(
          shadowColor: null,
        ),
        onPressed: onpressed,
        child: Text(
          number,
          style: const TextStyle(
            color: Colors.black,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
      ),
    );
  }
}
