C = [1, 1, 1];
A = [-1, -1, 1; -2, -5, -1];
b = [-4; -16];
Xmin = zeros(3, 1); 

[X, F] = linprog(C, A, b, [], [], Xmin);
disp('Soluția:');
disp(X);
disp('Valoarea funcției obiectiv:');
disp(F);
