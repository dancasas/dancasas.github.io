function total_dist = compute_arc_length_cubic_bezier(pt1, pt2, pt3, pt4, samples)
    SAMPLES = samples;
    t       = linspace(0,1,SAMPLES);
    pts     = kron((1-t).^3,pt1) + kron(3*(1-t).^2.*t,pt2) + kron(3*(1-t).*t.^2,pt3) + kron(t.^3,pt4);
    
    total_dist = 0.0;
    for k=1:size(pts,2)-1
        dist = sqrt((pts(1,k+1)-pts(1,k))^2 + (pts(2,k+1)-pts(2,k))^2);
        total_dist = total_dist + dist;
        %fprintf('pts(%03d)-->pts(%03d) = %f\n', k, k+1, dist);
    end
    %fprintf('ARC LENGTH = %f\n', total_dist);
end