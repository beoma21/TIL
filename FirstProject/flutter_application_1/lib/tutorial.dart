// void main() {
//   // #1. VARIABLES
//   // null satfety 개발자가 널 값을 참조하지 않도록 하는 것을 말함
//   String? name =
//       "selena"; // 클래스 내부, propert 선언 시 타입 지정 // 변수 타입 뒤의 ?는 null이 참조될 수 있음을 뜻함 (Nullable)
//   var address = "123@naver.com"; // 함수나 메소드 내부에 지역변수 선언 시
//   dynamic menu = "pizza"; // dynamic 여러 타입으로 사용할 수 있는 변수 but 사용에 주의
//   final String sex = "female"; // 1회 값을 지정한 이후 수정할 수 없음 JS Const와 동일
//   // sex = 'male';
//   late final String
//       house; // 초기 데이터 없이 먼저 변수를 생성하고 추후에 데이터를 넣을 때 주로 사용한다. 값 할당 전에 호출되면 막아주는 것이 유용 api 사용
//   var hao;
//   const weo = 'nis'; // final과 비슷하나 컴파일 할 때 이미 값을 알고 있는 변수에 선언한다는 차이가 있음

//   hao = "enwvw";

//   menu = 21;
//   menu = true;
//   name = null;

//   // #2. DATA TYPES
//   String myName = 'park';
//   bool isAlive = true;
//   int age = 28;
//   double money = 69.77;
//   num x = 14; // num은 int와 double의 부모
//   x = 1.23;

//   var numbers = [1, 2, 3, 4];
//   numbers.add(1); // 여러 메소드 제공

// // collection if: 존재할 수도 안할 수도 있는 요소를 가지고 올 수 있음
//   var giveMeFive = true;
//   var numbersTest = [1, 2, 3, 4, if (giveMeFive) 5];
//   // String Interpolation: text에 변수를 추가하는 방법
//   var greeting =
//       'hello everyone my name is $myName, nice to meet you! ${age + 2}';
//   print(greeting);

//   // Collection For
//   var oldFriends = ['choi', 'kim'];
//   var newFriends = ['baek', 'chin', for (var friend in oldFriends) "㈜ $friend"];
//   print(newFriends);

//   // Maps 자료형: 파이썬 딕셔너리 역할 key와 value를 연결하는 객체
//   var player = {
//     'name': 'nike',
//     'exp': 192,
//     'superPower': true
//   }; // Type: Map<String, Object> 컴파일러가 자료형을 유추

//   // Sets 자료형: Set에 속한 모든 아이템들이 유니크해야될 때 사용, 파이썬 튜플 역할
//   Set<int> backnumbers = {1, 2, 3, 4};
//   List<int> backnumber = [1, 2, 3, 4];

//   // print(sayHello("paek", 27, "keita"));
//   // print(sayHello(name: "jelda", age: 27, country: "cuba"));
// }

// String sayHello(String name) {
//   // void: return값이 없음
//   return "HELLO $name nice to meet you";
// }

// String sayHello(String name) =>
//     "HELLO $name nice to meet you"; // fat arrow syntax: 바로 return한다는 의미로 한 줄일 때 주로 사용

// // named parameter: positional argument의 경우 각각의 위치를 기억해야만한다.

// // null safe를 우려함
// // required modifier 를 타입 앞에 붙이는 경우 에러를 나타내 반드시 값을 넣게끔 할 수 있다.
// String sayHello(
//     {required String name, required int age, required String country}) {
//   return "hello $name, you are $age, and you come from $country";
// }

// // default 값을 사용하는 경우
// String sayHello(
//     {String name = "coco", int age = 17, String country = "bacon"}) {
//   return "hello $name, you are $age, and you come from $country";
// }

// // optional paremeters 필수가 아닌 선택형으로 만들 수 있음 대괄호, ?, dafault 값 부여 필요
// String sayHello(String name, int age, [String? country = "hongkong"]) {
//   return "hello $name, you are $age, and you come from $country";
// }

// QQ Operator
String capitalizeName(String? name) =>
    // name != null ? name.toUpperCase() : 'ANON';
    name?.toUpperCase() ?? 'ANON';

// typedef 자료형을 간편하게 작성 가능

// 전
List reverseListOfNumbers(List list) {
  var reversed = list.reversed;
  return reversed.toList();
}

// 후
typedef ListOfInts = List;

// ListOfInts reverseListOfNumbers(ListOfInts list) {
// var reversed = list.reversed;

class Player {
  String name;
  int xp, age;
  String team;

  // 생성자
  // Player(String name, int xp) {
  //   this.name = name;
  //   this.xp = xp;
  // }

  // Player(this.name, this.xp);
  // Player(this.name, this.xp);
  Player(
      {required this.name,
      required this.xp,
      required this.team,
      required this.age});

  Player.createBluePlayer({required String name, required int age})
      : // 콜론을 사용해서 Player 클래스를 초기화함
        this.age = age,
        this.name = name,
        this.xp = 0,
        this.team = "Blue";

  void sayHello() {
    print("hi, my name is $name! $xp");
  }
}

class Human extends Player {
  Human(String name, int xp, String team, int age)
      : super(name: name, xp: xp, team: team, age: age);

  @override
  void sayHello() {
    super.sayHello();
    print("and my xp is $xp");
  }
}

void main() {
  // var player = Player("hash", 200);
  var player = Player(
    name: "sope",
    xp: 240,
    team: "blue",
    age: 27,
  )
    ..age = 17
    ..name = "pin"
    ..team = "blue"
    ..xp = 150;
  print(player.name);
  print(player.xp);
  player.sayHello();

  var player2 = Player.createBluePlayer(name: "salmon", age: 17);
  player2.sayHello();

  var player3 = Human("namde", 12, "teame", 55);
  player3.sayHello();
}


/*
/// Recap 23/1/15
void main() {
  // 변수
  final chin = "strong";
  const pee = "jewis";
  late dynamic pist;
  String? bin = "strong";
  print(bin);

  // 자료형
  int sibi = 17;
  double sisi = 17.53;
  String koko = "sw";
  bool iskoko = true;
  bool ispepe = false;
  var kakao = ['chin', 'awful'];
  var numbers = ["ss", 2, 3, 4, if (ispepe) 5, for (var k in kakao) 4];
  print(numbers);
  var player = {'name': 'kanu', 'height': 178, 'weight': 65};
  Set<int> nums = {1, 1, 2, 3};

  String hey(int street, bool sex, {required String name, required int age}) =>
      "hey you!, watch out man~ $age & $name";
  String boy({String name = "klook", int age = 20}) => "$name, $age";
  String city(String? wj) => wj?.toUpperCase() ?? "SIBI";
  print(hey(name: "sine", age: 21, 17, true));
  print(boy(name: "kolin", age: 22));
  print(city("wevin"));
}
*/