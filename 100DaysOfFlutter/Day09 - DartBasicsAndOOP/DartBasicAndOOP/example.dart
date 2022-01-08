void main(List<String> args) {
  bmiCalculator(height: 1.77, weight: 80);
  bmiCalculator(height: 1.77, weight: 75);
  bmiCalculator(height: 1.77, weight: 70);
  bmiCalculator(height: 1.77, weight: 85);
}

void bmiCalculator({required double height, required double weight}) {
//kilo/m2
  double bmi = weight / (height * height);

  if (bmi < 18.5) {
    print('Zayıf');
  } else if (bmi >= 18.5 && bmi < 24.9) {
    print('Normal');
  } else {
    print('Kilolu');
  }
  print(bmi);
}
