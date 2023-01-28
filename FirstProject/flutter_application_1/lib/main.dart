import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/button.dart';

void main() {
  var charm = Player(name: "chim");
  runApp(App());
}

class Player {
  String name;

  Player({required this.name});
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // material:  구글, cupertino: 애플 디자인 앱을 어떤 디자인으로 만들고 싶은지, 보통 구글 디자인이 더 보기 좋음
    return MaterialApp(
        home: Scaffold(
            backgroundColor: const Color(0xFF181818),
            body: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const Text(
                            "hey, ditto",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 28,
                                fontWeight: FontWeight.w900),
                          ),
                          Text(
                            "Welcome, Warriors",
                            style: TextStyle(
                                color: Colors.white.withOpacity(0.7),
                                fontSize: 14),
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 120,
                  ),
                  Text(
                    "Total Balance",
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.white.withOpacity(0.8),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    "\$5 194 482",
                    style: TextStyle(
                      fontSize: 48,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Button(
                          text: "Transfer",
                          bgColor: Colors.amber,
                          textColor: Colors.white),
                      Button(
                          text: "Request",
                          bgColor: Color.fromARGB(255, 20, 17, 7),
                          textColor: Colors.white),
                    ],
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                  Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Wallets",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 36,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "View All",
                          style: TextStyle(
                              color: Colors.white.withOpacity(0.8),
                              fontSize: 12,
                              fontWeight: FontWeight.w600),
                        ),
                      ]),
                  const SizedBox(height: 20),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 20),
                      child: Row(children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Euro',
                              style:
                                  TextStyle(color: Colors.amber, fontSize: 32),
                            ),
                            const SizedBox(height: 10),
                            Row(
                              children: [
                                const Text('6428',
                                    style: TextStyle(
                                        color: Colors.amber, fontSize: 20)),
                                const SizedBox(
                                  width: 20,
                                ),
                                Text('EUR',
                                    style: TextStyle(
                                        color: Colors.amber.shade300,
                                        fontSize: 20))
                              ],
                            )
                          ],
                        )
                      ]),
                    ),
                  ),
                ],
              ),
            )
            // body: Center(

            //   child: Text('hello')),
            // scaffold 우리 화면의 구조를 정해줘야함

            // appBar: AppBar(
            //   backgroundColor: Colors.red.shade300,
            //   title: Text('hello, flutter'),
            //   centerTitle: true,
            // ),
            ) //
        );
  }
}
