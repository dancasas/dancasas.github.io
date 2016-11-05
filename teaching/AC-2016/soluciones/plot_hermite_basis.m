
function plot_hermite_basis()
    figure;
    hold on;
    grid on;
    % Range
    x = 0:0.0001:1;
    
    H0 = 2*x.^3 - 3*x.^2 +1 ;
    plot(x,H0);
    
    H1 = -2*x.^3 + 3*x.^2;
    plot(x,H1);
    
    H2 = x.^3 - 2*x.^2 + x;
    plot(x,H2);
    
    H3 = x.^3 - x.^2;
    plot(x,H3);
    
    hold off;
end