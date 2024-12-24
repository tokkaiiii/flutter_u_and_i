import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[100],
      body: SafeArea(
        top: true,
        bottom: false,
        left: false,
        right: false,
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              _Top(),
              /// 이미지
              _Bottom(),
            ],
          ),
        ),
      ),
    );
  }
}

class _Top extends StatelessWidget {
  const _Top({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Expanded(
      child: Container(
        // color: Colors.red,
        child: Column(
          children: [
            Text(
              'U&I',
              style: textTheme.displayLarge,
              ),
            Text(
              '우리 처음 만난날',
              style: textTheme.bodyLarge,
            ),
            Text(
              '2023.11.23',
              style: textTheme.bodyMedium,

            ),
            IconButton(
              iconSize: 60.0,
              color: Colors.red,
              onPressed: () {
                print('클릭');
              },
              icon: Icon(
                Icons.favorite,
              ),
            ),
            Text(
              "D+1",
              style: textTheme.displayMedium,
            ),
          ],
        ),
      ),
    );
  }
}

class _Bottom extends StatelessWidget {
  const _Bottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        // color: Colors.blue,
        child: Image.asset('asset/img/middle_image.png'),
      ),
    );
  }
}
