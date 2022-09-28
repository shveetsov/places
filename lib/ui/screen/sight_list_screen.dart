import 'package:flutter/material.dart';

class SightListScreen extends StatefulWidget {
  const SightListScreen({Key? key}) : super(key: key);

  @override
  State<SightListScreen> createState() => _SightListScreenState();
}

class _SightListScreenState extends State<SightListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: false,
        title: RichText(
          text: const TextSpan(
            text: 'C',
            style: TextStyle(
              color: Color.fromRGBO(76, 175, 80, 1),
              fontFamily: 'Roboto',
              fontSize: 32,
              fontWeight: FontWeight.w700,
            ),
            children: [
              TextSpan(
                text: 'писок\n',
                style: TextStyle(
                  color: Color.fromRGBO(37, 40, 73, 1),
                  fontFamily: 'Roboto',
                  fontSize: 32,
                  fontWeight: FontWeight.w700,
                ),
                children: [
                  TextSpan(
                    text: 'и',
                    style: TextStyle(
                      color: Color.fromRGBO(252, 221, 61, 1),
                      fontFamily: 'Roboto',
                      fontSize: 32,
                      fontWeight: FontWeight.w700,
                    ),
                    children: [
                      TextSpan(
                        text: 'нтересных мест',
                        style: TextStyle(
                          color: Color.fromRGBO(37, 40, 73, 1),
                          fontFamily: 'Roboto',
                          fontSize: 32,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        toolbarHeight: 100,
        backgroundColor: Colors.white,
        shadowColor: const Color.fromRGBO(255, 255, 255, 0),
      ),
      body: Center(
        child: Text('Hello!'),
      ),
    );
  }
}

/*
const Text(
          'Список\nинтересных мест',
          style: TextStyle(
            color: Color.fromRGBO(37, 40, 73, 1),
            fontFamily: 'Roboto',
            fontSize: 32,
            fontWeight: FontWeight.w700,
          ),
        ),
*/
