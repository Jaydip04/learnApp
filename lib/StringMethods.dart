void main() {
  String str1 = 'Jaydip Tank';
  String str = 'Jaydip Tank';
  String str2 = 'THIS IS A SINGLE LINE STRING.';
  String str3 = "this is a string.";
  String str4 = "Today, is, Thursday";
  int n = 12;
  String str5 = "";

  // List of String Method
  // 1. String.toUpperCase()
  // 2. String.toLowerCase()
  // 3. String.trim()
  // 4. compareTo(String other)
  // 5. String replaceAll(Pattern from, String replace)
  // 6. split(Pattern pattern)
  // 7. substring(int startIndex, [ int endIndex ])
  // 8. val.toString()
  // 9. String.startsWith()
  // 10. String.endsWith()

  // Returns a list of the UTF-16 code units of a given string.
  // 1. String.codeUnits
  print("Property : String.codeUnits");
  print(str1.codeUnits);
  print("\n");


  // Output : [74, 97, 121, 100, 105, 112, 32, 84, 97, 110, 107]


  // Returns true if the string is empty; else returns false.
  // 2. String.isEmpty
  print("Property : String.isEmpty");
  print(str5.isEmpty);
  print(str1.isEmpty);
  print("\n");

  // Output : true
  //          false


  // Returns the length of the string including space, tab and newline characters.
  // 3. String.length

  print("Property : String.length");
  print("The Length of the String is : ${str1.length}");
  print("\n");

  // Output : The Length of the String is : 11


  // Returns a new string by converting all characters in the given string to lower case.
  // 4. String.toUpperCase()

  print("Function : String.toUpperCase()");
  print(str3.toUpperCase());
  print("\n");

  // Output : THIS IS A SINGLE LINE STRING.


  // Returns a new string by converting all characters in the given string to lower case.
  // 5. String.toLowerCase()

  print("Function : String.toLowerCase()");
  print(str2.toLowerCase());
  print("\n");

  // Output : this is a single line string.


  // Returns a new string by removing all leading and trailing spaces. However, this method doesn’t discard spaces between two strings.
  // 6. String.trim()

  print("Function : String.trim()");
  print(str1.trim());
  print("\n");

  // Output : this is a single line string.


  // Returns a new string by removing all leading and trailing spaces. However, this method doesn’t discard spaces between two strings.
  // 7. compareTo(String other)

  print("Function : compareTo(String other)");
  print("str.compareTo(str1): ${str.compareTo(str1)}");
  print("str1.compareTo(str2): ${str3.compareTo(str2)}");
  print("str1.compareTo(str3): ${str1.compareTo(str3)}");
  print("str3.compareTo(str2): ${str3.compareTo(str2)}");
  print("\n");

  // Output : str.compareTo(str1): 0
  //          str1.compareTo(str2): 1
  //          str1.compareTo(str3): -1
  //          str3.compareTo(str2): 1


  // Replaces all substrings that match the specified pattern with a given value.
  // 8. String replaceAll(Pattern from, String replace)

  print("Function : String replaceAll(Pattern from, String replace)");
  print("New String : ${str1.replaceAll("Jaydip", "Dhaval")}");
  print("\n");

  // Output : New String : Dhaval Tank


  // Splits the string at matches of the specified delimiter and returns a list of substrings.
  // 9. split(Pattern pattern)

  print("Function : split(Pattern pattern)");
  print("New String : ${str4.split(',')}");
  print("\n");

  // Output : New String : [Today,  is,  Thursday]


  // Returns the substring of this string that extends from startIndex, inclusive, to endIndex, exclusive.
  // 10. substring(int startIndex, [ int endIndex ])

  print("Function : substring(int startIndex, [ int endIndex ])");
  print("New String : ${str1.substring(0)}");
  print("New String : ${str1.substring(6,11)}");
  print("\n");

  // Output : New String : Jaydip Tank
  //          New String :  Tank


  // Returns a string representation of an object.
  // 10. val.toString()

  print("Function : val.toString()");
  var res = n.toString();
  print("New String: ${res}");
  print("\n");

  // Output : New String: 12

  // Returns the 16-bit UTF-16 code unit at the given index.
  // 11. String.codeUnitAt(int index)

  print("Function : String.codeUnitAt(int index)");
  print("Code Unit of index 0 (G): ${str1.codeUnitAt(0)}");
  print("\n");

  // Output : New String: 12

  // Returns true if the string is startsWith ; else returns false.
  // 12. String.startsWith()

  print("Function : startsWith()");
  print(str1.startsWith("J"));
  print(str1.startsWith("k"));
  print("\n");

  // Output : true
  //          false

  //  Returns true if the string is endsWith ; else returns false.
  // 13. String.endsWith()

  print("Function : endsWith()");
  print(str1.endsWith("J"));
  print(str1.endsWith("k"));
  print("\n");

  // Output : false
  //          true


  // Full Class output

  // Property : String.codeUnits
  // [74, 97, 121, 100, 105, 112, 32, 84, 97, 110, 107]
  //
  //
  // Property : String.isEmpty
  // true
  // false
  //
  //
  // Property : String.length
  // The Length of the String is : 11
  //
  //
  // Function : String.toUpperCase()
  // THIS IS A STRING.
  //
  //
  // Function : String.toLowerCase()
  // this is a single line string.
  //
  //
  // Function : String.trim()
  // Jaydip Tank
  //
  //
  // Function : compareTo(String other)
  // str.compareTo(str1): 0
  // str1.compareTo(str2): 1
  // str1.compareTo(str3): -1
  // str3.compareTo(str2): 1
  //
  //
  // Function : String replaceAll(Pattern from, String replace)
  // New String : Dhaval Tank
  //
  //
  // Function : split(Pattern pattern)
  // New String : [Today,  is,  Thursday]
  //
  //
  // Function : substring(int startIndex, [ int endIndex ])
  // New String : Jaydip Tank
  // New String :  Tank
  //
  //
  // Function : val.toString()
  // New String: 12
  //
  //
  // Function : String.codeUnitAt(int index)
  // Code Unit of index 0 (G): 74
  //
  //
  // Function : startsWith()
  // true
  // false
  //
  //
  // Function : endsWith()
  // false
  // true

}
