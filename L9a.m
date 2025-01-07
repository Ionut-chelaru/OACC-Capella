A = [3, 1; 1, 2]; 
b = [8; 9];       
c = [-4, -5];     


Xmin = zeros(2, 1); 
[X, F] = linprog(c, A, b, [], [], Xmin);


disp('Soluția:');
disp(X);
disp('Profitul maxim:');
disp(-F); 
