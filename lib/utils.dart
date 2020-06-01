import 'dart:math';

List<int> selecionarDezenas(int size) {
  Random rand = Random(DateTime.now().second * DateTime.now().hashCode);
  List<int> nums = [];
  int num;
  int i = 0;
  while (i < size) {
    num = rand.nextInt(60) + 1;
    print(num);
    if (!nums.contains(num)) {
      nums.add(num);
      i++;
    }
  }
  nums.sort();
  return nums;
}
