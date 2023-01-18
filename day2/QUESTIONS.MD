1. The governance canister `r7inp-6aaaa-aaaaa-aaabq-cai` controls the ledger
canister (`dfx canister --network ic info ryjl3-tyaaa-aaaaa-aaaba-cai`)

2. `pae4o-o6dxf-xki7q-ezclx-znyd6-fnk6w-vkv5z-5lfwh-xym2i-otrrw-fqe` subnet with
16 nodes at the moment.

3. According to *networknervoussystem.com* with a staking period and a dissolve
delay of 4 years starting the 01/18/2023, the curve tells that after 2 years the
voting power will be **13.03**.

4. The use of `toText` requires the Nat module to be imported `import Nat
"mo:base/Nat";`

5. The mutable array is not initialized correctly, `var` missing, should be like
this: `var languages : [var Text] = [var "English", "German", "Chinese",
"Japanese", "French"];` Also `show_language` function being public, it should ne
return a mutable array but a snapshot of it obtained with `freeze` function
instead.

6. The use of `append` requires the Array module to be imported `import Array
"mo:base/Array";`.  Also `append` try to reassign the immutable variable
`languages`.
