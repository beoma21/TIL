void main() {
  // #1. VARIABLES
  // null satfety 개발자가 널 값을 참조하지 않도록 하는 것을 말함
  String? name =
      "selena"; // 클래스 내부, propert 선언 시 타입 지정 // 변수 타입 뒤의 ?는 null이 참조될 수 있음을 뜻함 (Nullable)
  var address = "123@naver.com"; // 함수나 메소드 내부에 지역변수 선언 시
  dynamic menu = "pizza"; // dynamic 여러 타입으로 사용할 수 있는 변수 but 사용에 주의
  final String sex = "female"; // 1회 값을 지정한 이후 수정할 수 없음 JS Const와 동일
  // sex = 'male';
  late final String
      house; // 초기 데이터 없이 먼저 변수를 생성하고 추후에 데이터를 넣을 때 주로 사용한다. 값 할당 전에 호출되면 막아주는 것이 유용 api 사용
  var hao;
  const weo = 'nis'; // final과 비슷하나 컴파일 할 때 이미 값을 알고 있는 변수에 선언한다는 차이가 있음

  hao = "enwvw";

  menu = 21;
  menu = true;
  name = null;

  // #2. DATA TYPES
  String myName = 'park';
  bool isAlive = true;
  int age = 28;
  double money = 69.77;
  num x = 14; // num은 int와 double의 부모
  x = 1.23;

  var numbers = [1, 2, 3, 4];
  numbers.add(1); // 여러 메소드 제공

  var giveMeFive = true;
  var numbersTest = [
    1,
    2,
    3,
    4,
    if (giveMeFive) 5
  ]; // collection if: 존재할 수도 안할 수도 있는 요소를 가지고 올 수 있음
  // String Interpolation: text에 변수를 추가하는 방법
  var greeting =
      'hello everyone my name is $myName, nice to meet you! ${age + 2}';
  print(greeting);

  // Collection For
  var oldFriends = ['choi', 'kim'];
  var newFriends = ['baek', 'chin', for (var friend in oldFriends) "㈜ $friend"];
  print(newFriends);

  // Maps 자료형: 파이썬 딕셔너리 역할 key와 value를 연결하는 객체
  var player = {
    'name': 'nike',
    'exp': 192,
    'superPower': true
  }; // Type: Map<String, Object> 컴파일러가 자료형을 유추

  // Sets 자료형: Set에 속한 모든 아이템들이 유니크해야될 때 사용, 파이썬 튜플 역할
  Set<int> backnumbers = {1, 2, 3, 4};
  List<int> backnumber = [1, 2, 3, 4];
}
