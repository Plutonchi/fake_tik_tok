// ignore_for_file: depend_on_referenced_packages, use_full_hex_values_for_flutter_colors

import 'package:fake_tik_tok/my_home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class ProgressInd extends StatefulWidget {
  const ProgressInd({
    super.key,
    required this.tiktokmoney,
  });
  final String tiktokmoney;

  @override
  State<ProgressInd> createState() => _ProgressIndState();
}

class _ProgressIndState extends State<ProgressInd> {
  @override
  void initState() {
    super.initState();
    _navigateAfterDelay();
  }

  void _navigateAfterDelay() {
    Future.delayed(const Duration(seconds: 2), () {
      // Здесь вы можете определить маршрут для перехода на другую страницу
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) => DoneProgress(
                  tiktokmoney: widget.tiktokmoney,
                )),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: SizedBox(
        height: 150,
        width: 250,
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            SpinKitChasingDots(
              size: 20,
              itemBuilder: (BuildContext context, int index) {
                return DecoratedBox(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color:
                        index.isEven ? const Color(0xffff005c) : Colors.black,
                  ),
                );
              },
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Processing Your Payment',
              style: TextStyle(
                fontFamily: 'Tahoma',
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text('This could take a few second '),
          ],
        ),
      ),
    );
  }
}

class DoneProgress extends StatefulWidget {
  const DoneProgress({super.key, this.tiktokmoney});

  final String? tiktokmoney;
  @override
  State<DoneProgress> createState() => _DoneProgressState();
}

class _DoneProgressState extends State<DoneProgress> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Row(
        children: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const MyHomePage(),
                ),
              );
            },
            icon: const Icon(
              Icons.close,
            ),
          ),
        ],
      ),
      content: SizedBox(
        width: 400,
        height: 300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(50),
              ),
              child: const Icon(
                Icons.done_sharp,
                color: Color(0xffff19feb0),
                size: 50,
              ),
            ),
            const Text(
              "Payment completed",
              style: TextStyle(
                letterSpacing: 2,
                height: 3,
                fontFamily: 'TikTok',
                fontSize: 20,
                fontWeight: FontWeight.w100,
              ),
            ),
            Text(
              'You recharged ${widget.tiktokmoney} Coin. You can see Coins to send virtual Gifts. Link your PayPal account to TikTok for a more payment option.',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: 'Tahoma', fontSize: 16, color: Colors.grey[500]),
            )
          ],
        ),
      ),
    );
  }
}
