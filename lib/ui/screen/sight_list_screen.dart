import 'package:flutter/material.dart';
import 'package:places/mocks.dart';
import 'package:places/ui/screen/sight_card.dart';

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
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: AppBar(
          centerTitle: false,
          title: const Text(
            'Список\nинтересных мест',
            style: TextStyle(
              color: Color.fromRGBO(37, 40, 73, 1),
              fontFamily: 'Roboto',
              fontSize: 32,
              fontWeight: FontWeight.w700,
            ),
          ),
          toolbarHeight: 100,
          backgroundColor: Colors.white,
          elevation: 0,
        ),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
        itemCount: mocks.length,
        itemBuilder: (context, index) {
          return SightCard(sight: mocks[index]);
        },
      ),
    );
  }
}
