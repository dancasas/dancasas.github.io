function lagrange_interpolation_demo()
    % Sample points
    hold on;
    grid on;
    % Shows axis
    ax = gca;
    ax.XAxisLocation = 'origin';
    ax.YAxisLocation = 'origin';
    
    % Sample points
    x = [-9, -4, -1,  7];
    y = [ 5,  2, -2,  9];
    scatter(x,y,'filled','MarkerFaceColor',[1 0 0]);
    
    
    % Polinomios componentes
    x=-9:0.01:7;
    l0 = (x.^3 - 2*x.^2 - 31*x - 28) / (-640);
    l1 = ((x+9).*(x+1).*(x-7))/((-4+9)*(-4+1)*(-4-7));
    l2 = ((x+9).*(x+4).*(x-7))/((-1+9)*(-1+4)*(-1-7));
    l3 = ((x+9).*(x+4).*(x+1))/((7+9)*(7+4)*(7+1));
    
    plot(x, y(1) * l0);
    plot(x, y(2) * l1);
    plot(x, y(3) * l2);
    plot(x, y(4) * l3);
    
    
    P = y(1) * ((x.^3 - 2*x.^2 - 31*x - 28) / (-640)) + ...
        y(2) * (((x+9).*(x+1).*(x-7))/((-4+9)*(-4+1)*(-4-7))) + ...
        y(3) * (((x+9).*(x+4).*(x-7))/((-1+9)*(-1+4)*(-1-7))) + ...
        y(4) * (((x+9).*(x+4).*(x+1))/((7+9)*(7+4)*(7+1)));
    
    plot(x, P,'LineWidth',2);
    hold off;
end