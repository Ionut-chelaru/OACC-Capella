type = 'min'; 
c = [-2 3 4];
A = [-1 -1 -1; 2 2 2];
b = [-1; 4];


[subs, A_final, x, z] = dsimplex(type, c, A, b);


