import Buffer "mo:base/Buffer";
import HashMap "mo:base/HashMap";
import Iter "mo:base/Iter";
import List "mo:base/List";
import Principal "mo:base/Principal";

actor {

  type List<T> = List.List<T>;
  type Buffer<T> = Buffer.Buffer<T>;

  // 1. TODO takes a list and returns a new list with duplicate elements removed

  func unique<T>(l : List<T>, equal : (T, T) -> Bool) : List<T> {
    var no_duplicates : List<T> = List.nil<T>();
    // for each val in list
    // if (compare nodup with val) is null then add val to nodup
    // else continue
    return no_duplicates;
  };

  // 2. takes a list and returns the reversed list

  func reverse<T>(l : List<T>) : List<T> {
    return List.reverse(l);
  };

  // 3. indicate if the caller is anonymous or not

  public shared ({ caller }) func is_anynomous() : async Bool {
    return Principal.isAnonymous(caller);
  };

  // 4. returns the optional index of the first occurrence of val in buf

  func find_in_buffer<T>(buf : Buffer<T>, val : T, equal : (T, T) -> Bool) : ?Nat {
    return Buffer.indexOf<T>(val, buf, equal);
  };

  let usernames = HashMap.HashMap<Principal, Text>(
    0,
    Principal.equal,
    Principal.hash,
  );

  public shared ({ caller }) func add_username(name : Text) : async () {
    usernames.put(caller, name);
  };

  // 5. return an array of tuples which contains all the entries in usernames

  public query func get_usernames() : async [(Principal, Text)] {
    return (Iter.toArray(usernames.entries()));
  };
};
