void main(){
  List<int> numbers = [1, 2, 3, 4, 5];
  List<int> numbers2 = [2, 5, 3, 4, 1];
  List<String> fruits = ['Apple', 'Banana', 'Orange'];

  // List of String Method
  // 1. add() and addAll()
  // 2. insert() and insertAll()
  // 3. remove() and removeAt()
  // 4. removeLast() and removeWhere()
  // 5. contains()
  // 6. sublist()
  // 7. sort()
  // 8. shuffle()
  // 9. getRange()
  // 10. take()
  // 11. skip()

  print(numbers);

  print("Function : add() and addAll()");
  numbers.add(6); // adds an element to the end of the list
  numbers.addAll([7, 8, 9]);
  print(numbers);// adds multiple elements to the end of the list
  print("\n");

  print("Function : insert() and insertAll()");
  numbers.insert(2, 10); // inserts 10 at index 2
  numbers.insertAll(1, [20, 30, 40]);
  print(numbers);// inserts a list of elements at index 1
  print("\n");

  print("Function : remove() and removeAt()");
  numbers.remove(4);
  numbers.removeAt(3);
  print(numbers);
  print("\n");

  print("Function : contains()");
  bool containerThree = numbers.contains(4);

  print(containerThree);
  print(numbers);
  print("\n");

  print("Function : indexOf() and lastIndexOf()");
  int index3 = numbers.indexOf(3);
  int lastIndex3 = numbers.lastIndexOf(3);
  print(index3);
  print(lastIndex3);
  print(numbers);
  print("\n");

  print("Function : sublist()");
  List<int> sublist = numbers.sublist(2, 5);
  print(sublist);
  print(numbers);
  print("\n");

  print("Function : sort()");
  numbers2.sort();
  print(numbers2);
  print("\n");


  // This method re-arranges order of the elements in the given list randomly.
  print("Function : getRange()");
  print(numbers.getRange(1, 4));
  print("\n");

  print("Function : take()");
  print(numbers.take(2));
  print("\n");

  print("Function : take()");
  print(numbers.skip(2));
  print("\n");


//   Full Class output
//   [1, 2, 3, 4, 5]
//   Function : add() and addAll()
//   [1, 2, 3, 4, 5, 6, 7, 8, 9]
//
//
//   Function : insert() and insertAll()
//   [1, 20, 30, 40, 2, 10, 3, 4, 5, 6, 7, 8, 9]
//
//
//   Function : remove() and removeAt()
//   [1, 20, 30, 2, 10, 3, 5, 6, 7, 8, 9]
//
//
//   Function : contains()
//   false
//   [1, 20, 30, 2, 10, 3, 5, 6, 7, 8, 9]
//
//
//   Function : indexOf() and lastIndexOf()
//   5
//   5
//   [1, 20, 30, 2, 10, 3, 5, 6, 7, 8, 9]
//
//
//   Function : sublist()
//   [30, 2, 10]
//   [1, 20, 30, 2, 10, 3, 5, 6, 7, 8, 9]
//
//
//   Function : sort()
//   [1, 2, 3, 4, 5]
//
//
//   Function : getRange()
//   (20, 30, 2)
//
//
//   Function : take()
//   (1, 20)
//
//
//   Function : take()
//   (30, 2, 10, 3, 5, 6, 7, 8, 9)
//
//

}