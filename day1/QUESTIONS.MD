1. Currently 48GB of data storage according to Day2 the heap being still limited
to 4GB according to dsarlis DFINITY Team on Dec 2022. (On the other hand `dfx
canister --network ic status --all` let me think that there is up to 8GB
available per canister on the heap).
2. Trying to reassign an immutable variable.
3. `change_message` is query type of call so it can not update the canister
state. Text `message` is initialized with Nat 0, these types are not compatible.
4. False
