C = [-3, -2];
A = [1, -2; -1, -1; 1, 1];
b = [3; -1; 10]; 
Xmin = zeros(2, 1); 

[X, F] = linprog(C, A, b, [], [], Xmin);
disp('Soluția:');
disp(X);
disp('Valoarea funcției obiectiv:');
disp(-F); 
