# Lua Stack Overflow in Deep Table Traversal

This repository demonstrates a common Lua error: a stack overflow caused by recursively traversing a very deep table.

The `bug.lua` file contains a function that recursively iterates through a nested table.  If the table's depth exceeds the Lua interpreter's stack limit, a stack overflow error will occur.

The `bugSolution.lua` file offers a solution using iteration instead of recursion to prevent this error.

## How to reproduce

1. Clone this repository.
2. Run `bug.lua` using a Lua interpreter. You'll likely see a stack overflow error if the table is sufficiently deep.
3. Run `bugSolution.lua` to observe the same task completed without a stack overflow.