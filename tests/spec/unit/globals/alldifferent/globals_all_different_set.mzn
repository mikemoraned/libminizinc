/***
!Test
expected:
- !Result
  solution: !Solution
    alldiff_avsi2: !Unordered
    - !!set {}
    - !!set {3}
    - !!set {2}
    - !Range 2..3
    - !!set {1}
    - !!set {1, 3}
    - !Range 1..2
    - !Range 1..3
***/

% Test all_different for var set of int.

include "all_different.mzn";

% set of int version
% alldiff_avsi2   = [{1, 2, 3}, {1, 2}, {1, 3}, {1}, {2, 3}, {2}, {3}, {}]

array[1..8] of var set of 1..3: alldiff_avsi2;

constraint all_different(alldiff_avsi2);

solve satisfy;

output ["alldiff_avsi2 = array1d(1..8, ", show(alldiff_avsi2), ");\n"];
