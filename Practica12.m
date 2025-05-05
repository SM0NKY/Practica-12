clc;
clear;


%Utilizando rref%
valores_sistema = [2 1 -1 , 8 ; -3 -1 2, -11 ; -2 1 2, -3];
variable = rref(valores_sistema);

disp(valores_sistema);
disp("--------------------------------");
disp(variable);
disp("--------------------------------");
fprintf("Valor de x1: %g, valor de x2: %g, valor de x3: %g\n", variable(1, 4), variable(2, 4), variable(3, 4));

%Utilizando inv%
valores_sistema2 = [2 1 -1 ; -3 -1 2 ; -2 1 2];
resultados = [8 ; -11 ; -3];

variable2 = inv(valores_sistema2);
soluciones = variable2 * resultados;

disp("Utilizando inversa");
disp(soluciones);
fprintf("Valor de x1: %g, valor de x2: %g, valor de x3: %g\n", soluciones(1), soluciones(2), soluciones(3));

