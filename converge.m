
function convergio = converge(probabilidad_anterior, probabilidad_actual, epsilon, total_de_pedidos)

 
  % Si el total de tiradas es mayor a 100
  if total_de_pedidos > 100
    % Y la diferencia entre la probabilidad anterior y la actual es menor a 
    % epsilon...
    if (abs(probabilidad_anterior - probabilidad_actual) < epsilon) 
      % Convergio!
      convergio = true;
    else
      % No convergio :(
      convergio = false;
    end
  else
    % No convergio :(
    convergio = false;
  end

end