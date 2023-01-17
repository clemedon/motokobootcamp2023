actor {
  // 1.
  public query func multiply(a : Nat, b : Nat) : async Nat {
    return a * b;
  };

  // 2.
  public query func volume(n : Nat) : async Nat {
    return n ** 3;
  };

  // 3.
  public query func hours_to_minutes(n : Nat) : async Nat {
    return n * 60;
  };

  // 4.
  var counter : Nat = 0;

  public func set_counter(n : Nat) : async () {
    counter := n;
    return;
  };

  public query func get_counter() : async Nat {
    return counter;
  };

  // 5.
  public query func test_divide(n : Nat, m : Nat) : async Bool {
    return (n % m == 0);
  };

  // 6.
  public query func is_even(n : Nat) : async Bool {
    return (n % 2 == 0);
  };
};
