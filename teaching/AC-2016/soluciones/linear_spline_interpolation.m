function linear_spline_interpolation()
    % Function to be approximated
    hold on;
    x = 0.5:0.1:5;
    y = 1./x;
    plot(x, y, 'LineWidth', 1);
    
    % Sample points
    x = [1, 2, 4];
    y = [1, 0.5, 0.25];
    scatter(x,y);
    
    % First segment
    x = 1:0.1:2;
    y = -0.5*x+1.5;
    plot(x,y, 'LineWidth', 2);
    
    % Second segment
    x = 2:0.1:4;
    y = -0.125*x + 0.75;
    plot(x,y, 'LineWidth', 2);
    
    hold off;
end