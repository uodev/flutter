void main(List<String> args) {
  //list, set, map

  var numbers = [1, 2, 3, 4, 5, 5];
  // print(numbers.length); //dizi uzunluğunu döndürür!
  // numbers.add(6); //diziye yeni değer eklemeye yarar!
  // print(numbers);
  // numbers.reversed; //diziyi tersine çevirir!
  // numbers.first; //ilk elemanı verir indeksi 0 olanı
  // print(numbers[0]); //ilk elemanı verir 0 yerine kaç yazarsak o elemanı verir
  // print(numbers.elementAt(0)); //bu da yukarıdaki gibi

  // if (numbers.isNotEmpty) //dizi boş değilse
  // {
  //   print(numbers);
  //   numbers.clear();
  //   print(numbers);
  // } else {
  //   print(numbers);
  //   numbers.add(7);
  //   print(numbers);
  // }

  //print(numbers.map((e) => '$e bir sayıdır!'));

  //set
  Set numbers2 = {1, 2, 3}; //aynı elemandan 2 tane olmaz
  print(numbers2.elementAt(0)); //direkt numbers2[0] kullanılamaz!

  //Map
  Map<int, String> cities = {
    34: 'Istanbul',
    41: 'Kocaeli',
    54: 'Sakarya',
  };
  print(cities.entries);
  print(cities.keys);
  print(cities.values);

  Map<String, dynamic> user = {
    'username': 'uoceylann',
    'age': 20,
    'isConfirmed': true,
  };
}
