import 'package:fake_tik_tok/widgets/progress_indicator.dart';
import 'package:flutter/material.dart';

class MoneyContain extends StatefulWidget {
  const MoneyContain(
      {super.key,
      required this.width,
      required this.height,
      required this.tikTokMoney,
      required this.money,
      required this.name});

  final double width;
  final double height;
  final String tikTokMoney;
  final String money;
  final String name;
  @override
  State<MoneyContain> createState() => _MoneyContainState();
}

class _MoneyContainState extends State<MoneyContain> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Column(
                  children: [
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(
                            Icons.close,
                            color: Colors.black,
                          ),
                        ),
                        const Text(
                          'Order Summary',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const Divider(
                        color: Colors.black87,
                        height: 10.0,
                        indent: 5.0, // Starting Space
                        endIndent: 5.0 // Ending Space
                        )
                  ],
                ),
                content: SizedBox(
                  height: 280,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '${widget.tikTokMoney} coins',
                            style: const TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "\$ ${widget.money}",
                            overflow: TextOverflow.clip,
                            style: const TextStyle(
                              fontSize: 16,
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Row(
                        children: [
                          Text(
                            'Select a payment method',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.grey,
                              fontFamily: 'Tahoma',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 50,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                'images/visa.png',
                                width: 40,
                              ),
                              const Text(
                                '  ************7892',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.grey,
                                  fontFamily: 'Tahoma',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          Image.asset(
                            'images/circle.png',
                            width: 30,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          const Text('Total:   '),
                          Text(
                            '\$ ${widget.money}',
                            style: const TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                actions: [
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.help_outline),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 2,
                        child: TextButton(
                          style: TextButton.styleFrom(
                            foregroundColor: Colors.white,
                            backgroundColor: const Color(0xffff005c),
                          ),
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ProgressInd(
                                  tiktokmoney: widget.tikTokMoney,
                                ),
                              ),
                            );
                          },
                          child: const Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 30, vertical: 20),
                            child: Text(
                              'Pay now',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              );
            });
      },
      child: Container(
        height: widget.height,
        width: widget.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: Colors.grey,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "images/coin.jpeg",
                  width: 35,
                  height: 35,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  widget.tikTokMoney,
                  overflow: TextOverflow.clip,
                  style: const TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              " \$ ${widget.money}",
              overflow: TextOverflow.clip,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.grey,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
