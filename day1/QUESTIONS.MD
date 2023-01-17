1. 8_589_934_592 bytes (8 GB limit for stable memory and 4 GB heap limit)
2. Trying to reassign an immutable variable.
3. `change_message` is query type of call so it can not update the canister
state. Text `message` is initialized with Nat 0, these types are not compatible.
4. False
