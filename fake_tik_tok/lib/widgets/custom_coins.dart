import 'package:fake_tik_tok/widgets/progress_indicator.dart';
import 'package:flutter/material.dart';

class Custom extends StatefulWidget {
  const Custom({
    super.key,
  });

  @override
  State<Custom> createState() => _CustomState();
}

class _CustomState extends State<Custom> {
  var userQuestion = '';
  final List<String> buttons = [
    '1',
    '2',
    '3',
    'del',
    '4',
    '5',
    '6',
    '000',
    '7',
    '8',
    '9',
    '0',
  ];

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return InkWell(
      onTap: () {
        setState(() {});
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Custom',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(
                            Icons.close,
                            color: Colors.black,
                            size: 40,
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
                content: StatefulBuilder(
                    builder: (BuildContext context, StateSetter setState) {
                  return SizedBox(
                    height: 300,
                    width: 300,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              'images/coin.jpeg',
                              width: 30,
                              height: 30,
                            ),
                            Container(
                              padding: const EdgeInsets.all(16.0),
                              alignment: Alignment.bottomRight,
                              child: Text(
                                userQuestion.toString(),
                                style: const TextStyle(fontSize: 32.0),
                              ),
                            ),
                          ],
                        ),
                        Expanded(
                          child: GridView.builder(
                            itemCount: buttons.length,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              mainAxisExtent: 70,
                              crossAxisCount: 4,
                              mainAxisSpacing: 3.0,
                              crossAxisSpacing: 1.0,
                            ),
                            itemBuilder: (BuildContext context, int index) {
                              if (index == 3) {
                                return InkWell(
                                  onTap: () {
                                    setState(() {
                                      userQuestion = userQuestion.substring(
                                          0, userQuestion.length - 1);
                                    });
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(2),
                                      child: Container(
                                        color: Colors.grey[300],
                                        child: Center(
                                          child: Image.asset(
                                            'images/delet.png',
                                            width: 80,
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              }
                              return Buttons(
                                buttonTapped: () {
                                  setState(() {
                                    userQuestion += buttons[index];
                                  });
                                },
                                buttonText: buttons[index],
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  );
                }),
                actions: [
                  TextButton(
                    onPressed: () {
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
                                          size: 40,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
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
                                    const Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Account',
                                          style: TextStyle(
                                            fontSize: 30,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 30,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          '$userQuestion coins',
                                          style: const TextStyle(
                                            fontSize: 30,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text(
                                          "\$",
                                          overflow: TextOverflow.clip,
                                          style: TextStyle(
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Image.asset(
                                              'images/visa.png',
                                              width: 40,
                                            ),
                                            const Text(
                                              '************7892',
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
                                      width:
                                          MediaQuery.of(context).size.width / 2,
                                      child: TextButton(
                                        style: TextButton.styleFrom(
                                          foregroundColor: Colors.white,
                                          backgroundColor:
                                              const Color(0xffff005c),
                                        ),
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    ProgressInd(
                                                      tiktokmoney: userQuestion
                                                          .toString(),
                                                    )),
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
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.help_outline,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 2,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color(0xffff005c),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 30, vertical: 20),
                              child: Center(
                                child: Text(
                                  'Pay now',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              );
            });
      },
      child: Container(
        height: height,
        width: width,
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
                const Text(
                  "Custom",
                  overflow: TextOverflow.clip,
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Large amount supported ",
              overflow: TextOverflow.clip,
              style: TextStyle(
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

class Buttons extends StatelessWidget {
  const Buttons({super.key, required this.buttonText, this.buttonTapped});
  final String buttonText;
  final Function()? buttonTapped;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: buttonTapped,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(2),
          child: Container(
            color: Colors.grey[300],
            child: Center(
              child: Text(
                buttonText,
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
