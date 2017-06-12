

function [probabilidad, todas_las_probabilidades] = calcular_probabilidad_poder_disparar(epsilon, dni)

  % Inicializo las variables que necesito
  probabilidad_anterior = 0; 
  probabilidad_actual = 1;  
  casos_favorables = 0;
  total_de_pedidos = 0;
  todas_las_probabilidades = [];
  
  % Mientras el algoritmo no converge
  while ~converge(probabilidad_anterior, probabilidad_actual, epsilon, total_de_pedidos)
  
        % La probabilidad anterior es la probabilidad actual
        probabilidad_anterior = probabilidad_actual;
      
        % Pido autorizacion
        primer_pedido = my_mex_service(dni);
        segundo_pedido = my_mex_service(dni);
        
        % Actualizo la cantidad de pedidos
        total_de_pedidos = total_de_pedidos + 1;
        
        % Chequeo el pedido
        if ( primer_pedido == 0 )&&(segundo_pedido == 0)
              casos_favorables = casos_favorables + 1;
        end
        
        % Calculo la probabilidad actual
        probabilidad_actual = casos_favorables / total_de_pedidos;
        
        % Esto es solamente para poder hacer el grafico ----------------------------
        todas_las_probabilidades = cat(1, todas_las_probabilidades, probabilidad_actual);
        % --------------------------------------------------------------------------
           
    end
  
  
  % Devuelvo la probabilidad actual
   probabilidad = probabilidad_actual;   
      
end



