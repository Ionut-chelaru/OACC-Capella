A = [3, 1, 1, 0; 1, 2, 0, 1]; 
b = [8; 9];                   
c = [-4, -5, 0, 0];           


tab = nma_simplex(A, b, c, false);


disp('Soluția (nma_simplex):');
solution_vector = tab(1:end-1, end);
disp(solution_vector(1:2)); 
disp('Profitul maxim:');
disp(-tab(end, end)); 
