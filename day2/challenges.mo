import Array "mo:base/Array";
import Text "mo:base/Text";
import Iter "mo:base/Iter";
import List "mo:base/List";
import Nat "mo:base/Nat";

actor {
  // 1. takes an array of integers and returns the average value of the elements in the array
  public func average_array(array : [Int]) : async Int {
    var sum : Int = 0;

    for (element in array.vals()) {
      sum := sum + element;
    };
    return sum / array.size();
  };

  // 2. takes in a string and a character, and returns the number of occurrences of that character in the string
  public func count_character(t : Text, c : Char) : async Nat {
    var occurrences : Nat = 0;
    let chars = t.chars();

    for (char in chars) {
      if (char == c) {
        occurrences := occurrences + 1;
      };
    };
    return occurrences;
  };

  // 3. takes a natural number n returns its factorial
  public query func factorial(n : Nat) : async Nat {
    func calc(m : Nat) : Nat {
      if (m == 0) {
        return 1;
      } else {
        return m * calc(m - 1);
      };
    };
    return calc(n);
  };

  // 4. that takes a sentence and returns its number of words
  public func number_of_words(t : Text) : async Nat {
    let words = Text.split(t, #char(' '));
    var count : Nat = 0;

    for (word in words) {
      count := count + 1;
    };
    return count;
  };

  // 5. that takes an array of natural numbers and returns a new array containing all duplicate numbers in the same order as they were found
  public func find_duplicates(a : [Nat]) : async [Nat] {
    var duplicates : [Nat] = [];
    var seen : [Nat] = [];

    for (value in a.vals()) {
      switch (Array.find<Nat>(seen, func x = x == value)) {
        case (null) {
          seen := Array.append(seen, [value]);
        };
        case (?Nat) {
          duplicates := Array.append(duplicates, [value]);
        };
      };
    };
    return duplicates;
  };

  // 6. takes a natural number n and returns a string representing its binary representation
  public func convert_to_binary(n : Nat) : async Text {
    var decimal : Nat = n;
    var binary : Nat = 0;
    var remainder : Nat = 1;
    var product : Nat = 1;

    while (decimal != 0) {
      remainder := decimal % 2;
      decimal := decimal / 2;
      binary := binary + (remainder * product);
      product := product * 10;
    };
    return Nat.toText(binary);
  };
};
