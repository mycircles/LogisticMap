function bifurcationPlotter(x0,r_min,r_max,r_step,n,l)
figure
hold on
    for r = r_min:r_step:r_max
        trajectory = logisticMap(x0,r,n);
        R = r*ones(n+1,1);
        plot(R(l:n),traj(l:n),'.','MarkerSize',.1,'Color',[0.2,0.2,0.2])
    end
    axis([r_min,r_max,min(trajectory),max(trajectory)])
hold off
    return
end

function [trajectory] = logisticMap(x,r,n)

xcurr = x;
trajectory(1,:) = x;
for i = 2:n
    trajectory(i,:) = r*xcurr*(1-xcurr);
    xcurr = trajectory(i,:);
end
return
end
     