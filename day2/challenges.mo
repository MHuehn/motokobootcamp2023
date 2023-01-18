import Int "mo:base/Int";
import Nat "mo:base/Nat";
import Iter "mo:base/Iter";
import Char "mo:base/Char";
import Text "mo:base/Text";
import Array "mo:base/Array";
import Buffer "mo:base/Buffer";

actor day1 {

  // 1. Write a function average_array that takes an array of integers and returns the average value of the elements in the array.

  public query func average_array(array : [Int]) : async Int {
    let length : Int = array.size();
    var addition : Int = 0;
    for (add in array.vals()) {
      addition += add;
    };
    let result = addition / length;
    return result;
  };

  // 2. Character count: Write a function that takes in a string and a character, and returns the number of occurrences of that character in the string.

  public query func count_character(t : Text, c : Char) : async Nat {
    var count : Nat = 0;
    for (char in Text.toIter(t)) {
      if (char == c) {
        count += 1;
      };
    };
    return count;
  };

  // 3. Write a function factorial that takes a natural number n and returns the factorial of n.

  public query func factorial(n : Nat) : async Nat {
    var range : Nat = n;
    var result : Nat = n;
    while (range > 1) {
      range := range - 1;
      result := range * result;
    };
    return result;
  };

  // 4. Write a function number_of_words that takes a sentence and returns the number of words in the sentence.

  public query func number_of_words(t : Text) : async Nat {
    var count : Nat = 0;
    let p = #text(" ");

    var new_text = Text.trimStart(t, p);
    new_text := Text.trimEnd(new_text, p);

    let value = Text.split(new_text, p);
    for (items in value) {
      count += 1;
    };
    return count;
  };

  // 5. Write a function find_duplicates that takes an array of natural numbers and returns a new array containing all duplicate numbers. The order of the elements in the returned array should be the same as the order of the first occurrence in the input array.
  // find_duplicates(a : [Nat]) -> async [Nat]

  public query func find_duplicates(numbers : [Nat]) : async [Nat] {
    let numbersBuffer = Buffer.fromArray<Nat>(numbers);
    let resultBuffer = Buffer.Buffer<Nat>(1);

    for (number in numbers.vals()) {
      let size : Int = Array.filter<Nat>(numbers, func item = item == number).size();
      let contains : Int = Array.filter<Nat>(
        Buffer.toArray<Nat>(resultBuffer),
        func item = item == number,
      ).size();

      if (size > 1) {
        if (contains == 0) {
          resultBuffer.add(number);
        };
      };
    };

    return Buffer.toArray<Nat>(resultBuffer);
  };

  // 6. Write a function **convert_to_binary** that takes a natural number n and returns a string representing the binary representation of n.
  public query func convert_to_binary(n : Nat) : async Text {
    var input : Nat = n;
    var rest : Nat = 0;
    var str : Text = "";
    while (input > 0) {
      rest := input % 2;
      str := Nat.toText(rest) #str;
      input := input / 2;
    };
    return str;
  };

};
