R = [1.944, 3.161, 2.192]; 
Pmed = [378.13, 251.70, 418.00]; 
a = [0.1252, 0.0646, 0.2630]; 
Delta_P_adm = [100, 75, 150]; 


C = R .* Pmed .* a;


Aeq = [1, 1, 1];
beq = [275];


Xmin = zeros(3, 1); 
Xmax = Delta_P_adm'; 

[X, W] = linprog(C, [], [], Aeq, beq, Xmin, Xmax);


disp('Reducerea optimă a vârfurilor (Delta_P):');
disp(X);
disp('Pierderile minime în rețea (W):');
disp(W);
