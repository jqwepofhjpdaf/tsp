var x1;
var x2;
var x3;
var x4;
maximize obj: 7*x1+1*x2+3*x3+4*x4;
subto c1: x1+x2+x3+x4 == 10;
subto c2: x1+x2+x3 <= 9;
subto c3: x1+x2+x4 <= 9;
subto c4: x1+x3+x4 <= 9;
subto c5: x4+x2+x3 <= 9;
subto c6: x1+x2 <= 7;
subto c7: x1+x3 <= 7;
subto c8: x1+x4 <= 7;
subto c9: x2+x3 <= 7;
subto c10: x2+x4 <= 7;
subto c11: x3+x4 <= 7;
subto c12: x1 <= 4;
subto c13: x2 <= 4;
subto c14: x3 <= 4;
subto c15: x4 <= 4;


