void main(List<String> args) {
  print(sum(15, 58));
  print(sum2(45, 85, 10));
  print(sum2(45, 20));
}

int sum(int x, int y) => x + y;

int sum2(int x, int y, [int z = 0]) => x + y + z;
