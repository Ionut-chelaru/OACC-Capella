fun_penalty = @(P) ...
    0.00008 * P(1)^2 + 0.024 * P(1) + 0.0001 * P(2)^2 + 0.016 * P(2) + 0.0001 * P(3)^2 + 0.018 * P(3) + ...
    1e6 * (abs(P(1) + P(2) + P(3) - 625)^2) + ...
    1e6 * (max(0, 195 - P(1))^2 + max(0, P(1) - 500)^2 + ...
           max(0, 70 - P(2))^2 + max(0, P(2) - 300)^2 + ...
           max(0, 60 - P(3))^2 + max(0, P(3) - 250)^2);


P0 = [200, 200, 225];

options = optimoptions('fminunc', 'Display', 'iter', 'Algorithm', 'quasi-newton');
[P_opt_unc, fval_unc] = fminunc(fun_penalty, P0, options);


disp('Soluția optimă fără restricții:');
disp(P_opt_unc);
disp('Valoarea funcției obiectiv:');
disp(fval_unc);
