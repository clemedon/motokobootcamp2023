1. Currently 48GB of data storage according to Day2 and 8GB on the heap
according to `dfx canister --network ic status --all`.
2. Trying to reassign an immutable variable.
3. `change_message` is query type of call so it can not update the canister
state. Text `message` is initialized with Nat 0, these types are not compatible.
4. False
