function bezier_joint()
    cla
    xlim([0 50])
    axis equal
    grid on;
    
    t = linspace(0,1,200);
    pt1 = [ 5;-10];
    pt2 = [13; -2];
    pt3 = [ 5; 20];
    pt4 = [25; 20];

    placelabel(pt1,' pt_1');
    placelabel(pt2,' pt_2');
    placelabel(pt3,' pt_3');
    placelabel(pt4,' pt_4');
    
    pts1 = kron((1-t).^3,pt1) + kron(3*(1-t).^2.*t,pt2) + kron(3*(1-t).*t.^2,pt3) + kron(t.^3,pt4);

    % Asegurate de que pt5-pt4 = pt4 - pt3
    pt5 = [45; 20];
    pt6 = [35; -2];
    pt7 = [43;-10];
    
    placelabel(pt5,'pt_5');
    placelabel(pt6,'pt_6');
    placelabel(pt7,'pt_7');

    pts2 = kron((1-t).^3,pt4) + kron(3*(1-t).^2.*t,pt5) + kron(3*(1-t).*t.^2,pt6) + kron(t.^3,pt7);
    
    % 3rd bezier
    pt8 = [51; -18];
    pt9 = [20; -18];
    pt10 = [13;-10];

    placelabel(pt8,'pt_8');
    placelabel(pt9,'pt_9');
    placelabel(pt10,'pt_10');

    pts3 = kron((1-t).^3,pt7) + kron(3*(1-t).^2.*t,pt8) + kron(3*(1-t).*t.^2,pt9) + kron(t.^3,pt10);
    
    
    %4th Bezier
    pt11 = [6;0];
    pt12 = [-3; -18];
    pt13 = [ 5;-10]; % Same as 1
    
    placelabel(pt11,'pt_11');
    placelabel(pt12,'pt_12');
    placelabel(pt13,'pt_13');
    
    pts4 = kron((1-t).^3,pt10) + kron(3*(1-t).^2.*t,pt11) + kron(3*(1-t).*t.^2,pt12) + kron(t.^3,pt13);
   
    hold on
    plot(pts1(1,:),pts1(2,:))
    plot(pts2(1,:),pts2(2,:))
    plot(pts3(1,:),pts3(2,:))
    plot(pts4(1,:),pts4(2,:))
    
    hold off
    
    
    % Figure
    hold on;
    
    % Scales control points
    pt1 = pt1.*0.5;
    pt2 = pt2.*0.5;
    pt3 = pt3.*0.5;
    pt4 = pt4.*0.5;
    
    pt5 = pt5.*0.5;
    pt6 = pt6.*0.5;
    pt7 = pt7.*0.5;
    
    pt8 = pt8.*0.5;
    pt9 = pt9.*0.5;
    pt10 = pt10.*0.5;
    
    pt11 = pt11.*0.5;
    pt12 = pt12.*0.5;
    pt13 = pt13.*0.5;
    
    % Translate control points
    pt1(1, :) = pt1(1,:) + 10;
    pt2(1, :) = pt2(1,:) + 10;
    pt3(1, :) = pt3(1,:) + 10;
    pt4(1, :) = pt4(1,:) + 10;
    
    pt5(1, :) = pt5(1,:) + 10;
    pt6(1, :) = pt6(1,:) + 10;
    pt7(1, :) = pt7(1,:) + 10;
    
    pt8(1, :) = pt8(1,:) + 10;
    pt9(1, :) = pt9(1,:) + 10;
    pt10(1, :) = pt10(1,:) + 10;    
    
    pt11(1, :) = pt11(1,:) + 10;
    pt12(1, :) = pt12(1,:) + 10;
    pt13(1, :) = pt13(1,:) + 10;   
    
    pts1 = kron((1-t).^3,pt1) + kron(3*(1-t).^2.*t,pt2) + kron(3*(1-t).*t.^2,pt3) + kron(t.^3,pt4);
   pts2 = kron((1-t).^3,pt4) + kron(3*(1-t).^2.*t,pt5) + kron(3*(1-t).*t.^2,pt6) + kron(t.^3,pt7);
     pts3 = kron((1-t).^3,pt7) + kron(3*(1-t).^2.*t,pt8) + kron(3*(1-t).*t.^2,pt9) + kron(t.^3,pt10);
     pts4 = kron((1-t).^3,pt10) + kron(3*(1-t).^2.*t,pt11) + kron(3*(1-t).*t.^2,pt12) + kron(t.^3,pt13);
    
    
    plot(pts1(1,:),pts1(2,:));
    plot(pts2(1,:),pts2(2,:))
    plot(pts3(1,:),pts3(2,:))
    plot(pts4(1,:),pts4(2,:))
    
    hold off;
end
