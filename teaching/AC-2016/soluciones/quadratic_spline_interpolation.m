function quadratic_spline_interpolation()
    hold on;
    
    % Sample points. Let's interpolate them with quadratic slpines
    x = [3, 4.5, 7, 9];
    y = [2.5, 1, 2.5, 0.5];
    scatter(x,y);
    
    % Defines matrix A (8 equations, 9 unknowns)
    % Importante saber de dónde sale esta matriz. 
     A8x9 = [9 3 1 0 0 0 0 0 0;
         20.25 4.5 1 0 0 0 0 0 0;
         0 0 0 20.25 4.5 1 0 0 0;
         0 0 0 49 7 1 0 0 0;
         0 0 0 0 0 0 49 7 1;
         0 0 0 0 0 0 81 9 1;
         9 1 0 -9 -1 0 0 0 0;
         0 0 0 14 1 0 -14 -1 0];
 
    % Términos independientes de cada equación
    b = [2.5 1 1 2.5 2.5 0.5 0 0]';
       
    % MATLAB choses what to do with 9 unknowns
    % Solucionamos un sistema del tipo Ax = b, donde A es nuestra matriz de
    % coeficientes, x nuestras incognitas (a1,b1,c1,a2,b2,c2,a3,c3,b3 en el
    % ejemplo que hicimos en clase) y b el vector columna de terminos independientes
    X8x9 = linsolve(A8x9,b);
    
    %% 8x9 solution
    % Plots 1st segment 
    x = 3:0.01:4.5;
    y = X8x9(1)*x.^2 + X8x9(2)*x + X8x9(3);
    plot(x, y);
    
    % Plots 2nd segment 
    x = 4.5:0.01:7;
    y = X8x9(4)*x.^2 + X8x9(5)*x + X8x9(6);
    plot(x,y);
    
    % Plots 3rd segment
    x = 7:0.01:9;
    y = X8x9(7)*x.^2 + X8x9(8)*x + X8x9(9);
    plot(x,y);
    
    %% 8x8 Solution
    
    % if we force, a1 = 0, A matrix is now 8x8 (1st column disappear)
    A8x8 = [3 1 0 0 0 0 0 0;
         4.5 1 0 0 0 0 0 0;
         0 0 20.25 4.5 1 0 0 0;
         0 0 49 7 1 0 0 0;
         0 0 0 0 0 49 7 1;
         0 0 0 0 0 81 9 1;
         1 0 -9 -1 0 0 0 0;
         0 0 14 1 0 -14 -1 0];
     
     X8x8 = linsolve(A8x8,b);
    
    % Plots 1st segment (we enforced a_1 = 0, so this is a linear segment)
    x = 3:0.01:4.5;
    y = X8x8(1)*x + X8x8(2);
    plot(x, y);
    
    % Plots 2nd segment 
    x = 4.5:0.01:7;
    y = X8x8(3)*x.^2 + X8x8(4)*x + X8x8(5);
    plot(x,y);
    
    % Plots 3rd segment
    x = 7:0.01:9;
    y = X8x8(6)*x.^2 + X8x8(7)*x + X8x8(8);
    plot(x,y);
    
    hold off;
end
