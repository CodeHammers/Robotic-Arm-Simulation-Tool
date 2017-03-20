function [retval] = PlotWorkingSpace (l1, l2,l3,maxQ1,maxQ2,maxQ3)
k=0:maxQ3;
for i=0:maxQ1
    for j=0:maxQ2
            plot(l1*cosd(i)+l2*cosd(i+j)+l3*cosd(i+j+k),l1*sind(i)+l2*sind(i+j)+l3*sind(i+j+k),'.y','markersize',10);
            hold on;
    end
end
endfunction
