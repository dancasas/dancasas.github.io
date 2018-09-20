function hermite_interpolation_demo()
    figure;   
    hold on;
    x = [0,1];
    y = [1,1];
    scatter(x,y);
        
    x = 0:0.0001:1;
    
    % Este polinomio lo hemos obtenido a mano, siguiendo la formula del
    % sumatorio
    y = x.^3 - x.^2 +1 ;
    plot(x,y);

    % Por si queremos visualizar las derivadas
    % 1st point derivative
    dy=diff(y)./diff(x);
    k=1; % point number 1
    tang=(x - x(k)) * dy(k) + y(k);
    plot(x(1:1000),tang(1:1000),'LineWidth',2);
    %scatter(x(k),y(k))
   
    % 2nd point derivative
    dy=diff(y)./diff(x);
    k=10000; % point sample point 10000
    tang=(x - x(k)) * dy(k) + y(k);
    plot(x(9000:10000),tang(9000:10000),'LineWidth',2);
    %scatter(x(k),y(k))
   
    hold off;
    
    %% Solución alternativa directa, utilizando matrices
    
    figure;
    hold on;
    
    % Polinomios base H
    H = [2 -3 0 1; -2 3 0 0; 1 -2 1 0; 1 -1 0 0];
    
    % h
    h = [1 1 0 1];
    
    sol = h*H;
    y = sol(1) * x.^3 + sol(2) * x.^2 + sol(3) * x + sol(4)*1 ;
    x = 0:0.0001:1;
    
    plot(x,y);
    hold off;
end