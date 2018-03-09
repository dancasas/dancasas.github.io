function equidistance_points(pt1, pt2, pt3, pt4, samples)
    figure;
    cla
     grid on
    placelabel(pt1,'pt_1');
    placelabel(pt2,'pt_2');
    placelabel(pt3,'pt_3');
    placelabel(pt4,'pt_4');    
    xlim([0 50]);
    ylim([-15 45]);
    axis equal
    hold on;
    
    total_dist = compute_arc_length_cubic_bezier(pt1, pt2, pt3, pt4, samples);
    
    SAMPLES = samples;
    t = linspace(0,1,SAMPLES);
    pts = kron((1-t).^3,pt1) + kron(3*(1-t).^2.*t,pt2) + kron(3*(1-t).*t.^2,pt3) + kron(t.^3,pt4);

    current_dist = 0.0;
    hits = 0;
    EQUIDISTANCE_POINTS = 30;
    update_target = 1;
    
    for k=1:size(pts,2)-1
       if(update_target == 1)
            target = (total_dist/EQUIDISTANCE_POINTS) * hits;
            update_target = 0;
       end
       
       dist = sqrt((pts(1,k+1)-pts(1,k))^2 + (pts(2,k+1)-pts(2,k))^2);
       current_dist = current_dist + dist;
       %fprintf('Current dist = %f     Target = %f\n', current_dist, target);
       if(target < current_dist)
            plot(pts(1,k),pts(2,k),'o','Color',[0 0 1]);    
            hits = hits + 1;
            update_target = 1;
            %fprintf('Hits = %02d\n', hits);
       end
    end
    hold off;
end