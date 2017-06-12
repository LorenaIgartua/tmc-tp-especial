
%                      TMC – TRABAJO PRACTICO ESPECIAL
%               Cálculo de probabilidades por Montecarlo

% Declaro mi DNI como constante
dni = 26590121;


% Declaro el error epsilon, segun punto 2, inciso a
epsilon = 0.1;

fprintf('Calculo de la Probabilidad Estimada, con epsilon = %f \n', epsilon);

  tic
% Calculamos la probabilidad de obtener la autorizacion para disparar
[probabilidad, todas_las_probabilidades] = calcular_probabilidad_poder_disparar(epsilon,dni);
  tiempo_de_calculo = toc
  
% Graficamos como fue evolucionando la probabilidad iteracion a iteracion
figure, plot (todas_las_probabilidades);
hold on
xlabel('Numero de pedido');
ylabel('Probabilidad');
ylim([0 1]);
legend('Evolucion de la probabilidad con epsilon = 0,1');

fprintf('Probabilidad_Estimada, con epsilon = 0,1 : %f \n', probabilidad);

Desvio_Estandar_primeros_20_iteraciones = std(todas_las_probabilidades(1:20))
    
Desvio_Estandar_ultimas_20_iteraciones = std(todas_las_probabilidades(end - 19 : end))




epsilon = 0.01;

fprintf('Calculo de la Probabilidad Estimada, con epsilon = %f \n', epsilon);

  tic
% Calculamos la probabilidad de obtener la autorizacion para disparar
[probabilidad, todas_las_probabilidades] = calcular_probabilidad_poder_disparar(epsilon,dni);
  tiempo_de_calculo = toc

% Graficamos como fue evolucionando la probabilidad iteracion a iteracion
figure, plot (todas_las_probabilidades);
hold on
xlabel('Numero de pedido');
ylabel('Probabilidad');
ylim([0 1]);
legend('Evolucion de la probabilidad con epsilon = 0,01');

fprintf('Probabilidad_Estimada, con epsilon = 0,01 : %f \n', probabilidad);

Desvio_Estandar_primeros_20_iteraciones = std(todas_las_probabilidades(1:20))
    
Desvio_Estandar_ultimas_20_iteraciones = std(todas_las_probabilidades(end - 19 : end))



epsilon = 0.001;

fprintf('Calculo de la Probabilidad Estimada, con epsilon = %f \n', epsilon);

  tic
% Calculamos la probabilidad de obtener la autorizacion para disparar
[probabilidad, todas_las_probabilidades] = calcular_probabilidad_poder_disparar(epsilon,dni);
  tiempo_de_calculo = toc


% Graficamos como fue evolucionando la probabilidad iteracion a iteracion
figure, plot (todas_las_probabilidades);
hold on
xlabel('Numero de pedido');
ylabel('Probabilidad');
ylim([0 1]);
legend('Evolucion de la probabilidad con epsilon = 0,001');
    
fprintf('Probabilidad_Estimada, con epsilon = 0,001 : %f \n', probabilidad);

Desvio_Estandar_primeros_20_iteraciones = std(todas_las_probabilidades(1:20))
    
Desvio_Estandar_ultimas_20_iteraciones = std(todas_las_probabilidades(end - 19 : end))