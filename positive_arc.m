n = 6;

if n == 6
    
load tsp6.csv

temp = tsp6;
arcs = zeros(size(tsp6,1),size(tsp6,1));
for i = 1:size(Adj,1)
    for j = 1:size(Adj,2)
        if temp(j,1)>temp(i,1)
            if Adj(i,j) ==1
                arcs(i,j) = 1;
            end
            
        else
            arcs(i,j) = -1;
        end
        
    end
    arcs(i,i) = -1;
end

for i = 1:length(arcs)
    for j = 1:length(arcs)
        if arcs(i,j) == 0
            arcs(i,j) = -1;
        end
    end
end

end

% if n == 5
%     load tsp5.csv
%     temp = tsp5
%     arcs = zeros(size(tsp5,1),size(tsp5,1))
%     for i = 1:size(