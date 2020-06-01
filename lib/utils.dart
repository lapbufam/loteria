import 'dart:math';

List<int> selecionarDezenas(int amount, int size) {
  Random rand = Random(DateTime.now().second * DateTime.now().hashCode);
  List<int> nums = [];
  int num;
  int i = 0;
  while (i < amount) {
    num = rand.nextInt(size) + 1;
    print(num);
    if (!nums.contains(num)) {
      nums.add(num);
      i++;
    }
  }
  nums.sort();
  return nums;
}
