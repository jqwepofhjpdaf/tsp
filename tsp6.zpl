set I := {1..60};
set J := {1..60};
set K := {1..60};
set IJ = I*J;
set IJK = I*J*K;
param w[IJ] := read "tsp6.csv" as "n+";

var x[IJ] binary;

maximize route: sum <i,j> in IJ: x[i,j];

subto constraint1: forall <i,j> in IJ: w[i,j]*x[i,j] >=0;

subto s: sum <j> in J: x[25,j] == 1; 

subto t: sum <i> in I: x[i,4] == 1;

subto middle: forall <j> in J: sum <i> in I: x[i,j] == sum <k> in K: x[j,k];

subto constraint2: forall <i> in I: x[i,i] ==0;

subto constraint3: forall <i,j> in IJ: x[i,j] + x[j,i] <=1;