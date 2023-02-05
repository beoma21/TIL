import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/home_screen.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(Object context) {
    return MaterialApp(
      theme: ThemeData(
        backgroundColor: const Color(0xFFE7626C),
        textTheme: const TextTheme(
          headline1: TextStyle(
            color: Color(0xFF232B55),
          ),
        ),
        cardColor: const Color(0xFFF4EDDB),
      ),
      home: const HomeScreen(),
    );
  }
}

// #4. StatefulWidget
/*
class App extends StatefulWidget {
  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  bool isShowTitle = false;
  int counter = 0;
  List<int> numbers = [];
  // setstate state에게 데이터의 변화가 생겼다고 알려주는 메서드
  void onClicked() {
    setState(() {
      counter += 1;
      numbers.add(counter);
    });
  }

  void toggleTitle() {
    setState(() {
      isShowTitle = !isShowTitle;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            color: Colors.red,
          ),
        ),
      ),
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            isShowTitle ? const MyLargeTitle() : const Text('Nothing'),
            IconButton(
                onPressed: toggleTitle, icon: const Icon(Icons.remove_red_eye)),
            IconButton(
              iconSize: 40,
              onPressed: onClicked,
              icon: const Icon(
                Icons.add_box_rounded,
              ),
            ),
            Text(
              "$counter",
              style: const TextStyle(fontSize: 30),
            ),
            for (var n in numbers) Text("$n"),
          ]),
        ),
      ),
    );
  }
}

class MyLargeTitle extends StatefulWidget {
  const MyLargeTitle({
    Key? key,
  }) : super(key: key);

  @override
  State<MyLargeTitle> createState() => _MyLargeTitleState();
}

class _MyLargeTitleState extends State<MyLargeTitle> {
  int count = 0;
  //  initstate 메서드가 build 메서드보다 항상 먼저 호출되어야함
  @override
  Widget build(BuildContext context) {
    return Text(
      'Click Count',
      style: TextStyle(
        fontSize: 30,
        color: Theme.of(context).textTheme.titleLarge?.color,
      ),
    );
  }
}
*/

/// #3. Widget
/*
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // material:  구글, cupertino: 애플 디자인 앱을 어떤 디자인으로 만들고 싶은지, 보통 구글 디자인이 더 보기 좋음
    return MaterialApp(
        home: Scaffold(
            backgroundColor: const Color.fromARGB(255, 5, 5, 5),
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 100,
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
                            bgColor: Colors.black,
                            textColor: Colors.white),
                        Button(
                            text: "Request",
                            bgColor: Color.fromARGB(255, 20, 17, 7),
                            textColor: Colors.white),
                      ],
                    ),
                    const SizedBox(
                      height: 160,
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
                    const CurrencyCard(
                      name: "Euro",
                      code: "EUR",
                      amount: "6 428",
                      icon: Icons.euro_rounded,
                      isInverted: false,
                      order: 0,
                    ),
                    const CurrencyCard(
                      name: "Bitcoin",
                      code: "BTC",
                      amount: "9 785",
                      icon: Icons.currency_bitcoin,
                      isInverted: true,
                      order: 1,
                    ),
                    const CurrencyCard(
                      name: "Yen",
                      code: "JPY",
                      amount: "4 222",
                      icon: Icons.currency_yen,
                      isInverted: false,
                      order: 2,
                    ),
                  ],
                ),
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
*/