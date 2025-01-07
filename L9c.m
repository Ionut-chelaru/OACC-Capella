
C = [2, 3]; 

A = [-1, -1; 2, -1];
b = [-1; 2];         


Aeq = [1, -3];       
beq = [-2];          


Xmin = zeros(2, 1); 


[X, F] = linprog(C, A, b, Aeq, beq, Xmin);

disp('Soluția:');
disp(X);
disp('Valoarea minimă a funcției obiectiv:');
disp(F);
