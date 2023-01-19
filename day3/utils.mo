import Array "mo:base/Array";
import Buffer "mo:base/Buffer";
import Int "mo:base/Int";
import Nat "mo:base/Nat";

module utils {

  // 1. takes an array [Int] of integers and returns the second largest number
  // in the array

  func second_maximum(array : [Int]) : Int {
    Array.sort(array, Int.compare)[array.size() - 2];
  };

  // 2. takes an array [Nat] and returns a new array with only the odd numbers
  // from the original array

  func remove_even(array : [Nat]) : [Nat] {
    return Array.filter<Nat>(array, func v = v % 2 != 0);
  };

  // 3. takes an array [T] and a Nat n, drop the n first elements of the array and
  // returns the remainder

  func drop<T>(xs : [T], n : Nat) : [T] {
    let buffer : Buffer.Buffer<T> = Buffer.fromArray<T>(xs);
    let (old : Buffer.Buffer<T>, new : Buffer.Buffer<T>) = Buffer.split<T>(
      buffer,
      n,
    );
    return Buffer.toArray<T>(new);
  };
};
