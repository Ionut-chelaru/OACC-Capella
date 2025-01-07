
fun = @(P) 0.00008 * P(1)^2 + 0.024 * P(1) + 0.0001 * P(2)^2 + 0.016 * P(2) + 0.0001 * P(3)^2 + 0.018 * P(3);


Aeq = [1, 1, 1];
beq = 625;


lb = [195, 70, 60];
ub = [500, 300, 250];


P0 = [200, 200, 225];


options = optimoptions('fmincon', 'Display', 'iter');
[P_opt, fval] = fmincon(fun, P0, [], [], Aeq, beq, lb, ub, [], options);

disp('Soluția optimă:');
disp(P_opt);
disp('Valoarea funcției obiectiv:');
disp(fval);
