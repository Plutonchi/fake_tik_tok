import 'package:fake_tik_tok/constans/images.dart';
import 'package:fake_tik_tok/constans/texts.dart';
import 'package:fake_tik_tok/widgets/money_contain.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _controller = TextEditingController();

  Widget _searchTextField() {
    //add
    return TextField(
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.grey[300],
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(50),
        ),
        contentPadding: const EdgeInsets.only(
          left: 20,
        ),
        hintText: 'Search',
        hintStyle:
            TextStyle(fontWeight: FontWeight.w600, color: Colors.grey[500]),
        suffixText: "|",
        suffixStyle: TextStyle(
          fontWeight: FontWeight.w600,
          color: Colors.grey[500],
        ),
        suffixIcon: Padding(
          padding: const EdgeInsets.only(right: 20),
          child: Icon(
            Icons.search,
            color: Colors.grey[500],
            size: 30,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leadingWidth: 200,
        leading: Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Row(
            children: [
              Image.asset(
                'images/tt.png',
                width: 35,
              ),
              Image.asset(
                'images/name.jpg',
                width: 90,
              ),
            ],
          ),
        ),
        title: _searchTextField(),
        actions: [
          Padding(
            padding: const EdgeInsets.only(left: 60, right: 30),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(3),
                  height: 30,
                  width: 100,
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.black38)),
                  child: const Text(
                    "+  Upload",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Image.asset(
                  'images/send.png',
                  width: 28,
                ),
                SizedBox(
                  width: 50,
                  child: SvgPicture.asset(
                    'images/message.svg',
                    height: 25,
                  ),
                ),
                Container(
                  color: Colors.black,
                  child: const Icon(
                    Icons.tiktok,
                    size: 28,
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
              ],
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 100,
                      ),
                      const Text(
                        'Get Coins',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w100,
                            fontSize: 25,
                            fontFamily: 'TikTok'),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            height: 40,
                            width: 300,
                            child: TextField(
                              controller: _controller,
                              decoration: InputDecoration(
                                enabledBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.black, width: 2.0),
                                ),
                                focusedBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.black, width: 3.0),
                                ),
                                hintText: Texts.entName,
                                fillColor: Colors.white,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              _controller.clear();
                            },
                            icon: const Icon(Icons.close),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Recharge',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontFamily: 'TikTok'),
                  ),
                  Text(
                    'View transaction history',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontFamily: 'TikTok'),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              GridView(
                scrollDirection: Axis.vertical, //default
                reverse: false, //default
                controller: ScrollController(),
                primary: false,
                shrinkWrap: true, padding: const EdgeInsets.all(5.0),

                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  mainAxisSpacing: 25.0,
                  crossAxisSpacing: 35.0,
                ),
                semanticChildCount: 0,
                cacheExtent: 0.0,
                clipBehavior: Clip.hardEdge,
                keyboardDismissBehavior:
                    ScrollViewKeyboardDismissBehavior.manual,
                children: [
                  MoneyContain(
                      width: width,
                      height: height,
                      tikTokMoney: '70',
                      name: _controller.text,
                      money: '0.75'),
                  MoneyContain(
                      width: width,
                      height: height,
                      tikTokMoney: '350',
                      name: _controller.text,
                      money: '3.75'),
                  MoneyContain(
                      width: width,
                      height: height,
                      tikTokMoney: '700',
                      name: _controller.text,
                      money: '7.5'),
                  MoneyContain(
                      width: width,
                      height: height,
                      tikTokMoney: '1,400',
                      name: _controller.text,
                      money: '15'),
                  MoneyContain(
                      width: width,
                      height: height,
                      tikTokMoney: '3,500',
                      name: _controller.text,
                      money: '37.5'),
                  MoneyContain(
                      width: width,
                      height: height,
                      tikTokMoney: '7,000',
                      name: _controller.text,
                      money: '75'),
                  MoneyContain(
                      width: width,
                      height: height,
                      tikTokMoney: '17,500',
                      name: _controller.text,
                      money: '187.5'),
                  const Custom(),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  Texts.pay,
                  Images.visa,
                  Images.masterCard,
                  Images.amerExsp,
                  Images.pay,
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Custom extends StatefulWidget {
  const Custom({
    super.key,
  });

  @override
  State<Custom> createState() => _CustomState();
}

class _CustomState extends State<Custom> {
  @override
  Widget build(BuildContext context) {
    String _inputValue = '';

    void _handleButtonPress(String value) {
      setState(() {
        _inputValue += value;
      });
    }

    void _clearInput() {
      setState(() {
        _inputValue = '';
      });
    }

    Widget _buildButton(String buttonText) {
      return Expanded(
        child: TextButton(
          onPressed: () {
            if (buttonText == '=') {
              _clearInput();
            } else {
              _handleButtonPress(buttonText);
            }
          },
          child: Text(
            buttonText,
            style: TextStyle(fontSize: 24.0),
          ),
        ),
      );
    }

    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return InkWell(
      onTap: () {
        print("PResss");
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                content: Container(
                  height: 500,
                  width: 500,
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
                            padding: EdgeInsets.all(16.0),
                            alignment: Alignment.bottomRight,
                            child: Text(
                              _inputValue,
                              style: TextStyle(fontSize: 32.0),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          _buildButton('1'),
                          _buildButton('2'),
                          _buildButton('3'),
                          IconButton(
                            onPressed: _clearInput,
                            icon: Icon(
                              Icons.clear_sharp,
                            ),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          _buildButton('4'),
                          _buildButton('5'),
                          _buildButton('6'),
                          _buildButton('000'),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          _buildButton('7'),
                          _buildButton('8'),
                          _buildButton('9'),
                          _buildButton('0'),
                        ],
                      ),
                    ],
                  ),
                ),
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
