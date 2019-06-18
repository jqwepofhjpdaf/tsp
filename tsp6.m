tsp6mat = [ 1 0 0 1 0 1 0 1 1 0;
 1 0 1 0 1 1 0 0 1 0;
 1 0 1 0 0 1 1 0 1 0;
 1 0 1 1 0 1 0 0 1 0;
 1 0 0 0 0 1 0 0 1 1;
 1 0 1 0 1 0 0 0 1 1;
 1 0 0 1 1 1 0 0 1 0;
 1 0 0 1 1 1 0 0 0 1;
 1 1 0 0 0 1 0 0 1 1;
 1 1 0 1 1 0 0 0 0 1;
 1 0 0 0 1 0 0 0 1 1;
 1 1 0 0 1 1 0 0 0 1;
 1 1 0 0 1 0 1 0 0 1;
 1 1 1 0 1 0 0 0 0 1;
 1 0 0 0 1 0 0 1 0 1;
 1 0 0 1 0 0 0 1 1 0;
 1 0 1 1 1 0 0 0 1 0;
 1 0 1 1 1 0 0 1 0 0;
 1 0 1 0 0 0 0 1 1 0;
 1 1 0 0 0 0 0 1 0 1;
 1 0 0 1 0 1 0 0 1 0;
 1 0 1 0 0 0 1 1 0 0;
 1 0 0 1 0 1 0 1 0 0;
 1 0 1 0 0 0 1 0 1 0;
 1 1 0 0 0 0 1 1 0 0;
 1 0 0 1 1 0 0 1 0 0;
 1 0 1 0 1 0 0 0 1 0;
 1 1 0 0 0 1 0 0 0 1;
 1 1 0 0 0 0 1 0 0 1;
 1 1 0 0 0 1 0 0 1 0;
 1 0 1 0 1 0 0 0 0 1;
 1 0 0 1 1 0 0 0 0 1;
 1 1 0 1 0 1 1 0 0 0;
 1 0 1 1 1 0 1 0 0 0;
 1 0 1 1 1 1 0 0 0 0;
 1 1 1 0 0 1 1 0 0 0;
 1 1 0 1 1 1 0 0 0 0;
 1 1 1 0 1 0 1 0 0 0;
 1 1 0 0 0 0 0 0 1 1;
 1 1 1 0 0 0 1 0 0 1;
 1 1 1 0 0 0 1 0 1 0;
 1 0 1 0 0 0 0 0 1 1;
 1 0 0 1 0 0 0 1 0 1;
 1 1 0 1 0 1 0 0 0 1;
 1 1 0 1 0 1 0 1 0 0;
 1 1 1 0 0 1 0 0 1 0;
 1 0 0 0 0 1 0 1 1 0;
 1 1 0 0 0 1 1 0 1 0;
 1 1 0 0 0 1 1 1 0 0;
 1 1 0 1 0 0 1 1 0 0;
 1 0 0 0 0 0 1 1 1 0;
 1 1 0 0 0 0 1 1 0 1;
 1 0 0 1 1 0 1 1 0 0;
 1 0 0 1 0 1 1 1 0 0;
 1 0 1 0 0 0 1 1 1 0;
 1 0 1 1 0 0 1 1 0 0;
 1 0 0 0 0 0 1 1 0 1;
 1 0 1 0 1 0 1 1 0 0;
 1 0 1 0 1 0 1 0 0 1;
 1 0 0 1 1 0 0 1 0 1;];

tsp6mat = tsp6mat(:,2:10);
tsp5mat = [1 0 0 0 1 1;
 1 0 0 1 0 1;
 1 1 0 0 0 1;
 1 1 0 0 1 0;
 1 0 1 1 0 0;
 1 0 1 0 0 1;
 1 1 1 0 1 0;
 1 1 1 1 0 0;
 1 1 0 1 1 0;
 1 0 1 1 1 0;
 1 1 0 0 1 1;
 1 0 1 1 0 1;
];
tsp5mat = tsp5mat(:,2:6);

if n ==6
    same6= [];
    matrix6 = matrix(:,2:10);
    for i = 1:size(tsp6mat,1)
        for j = 1:size(matrix6,1)
            if tsp6mat(i,:) == matrix6(j,:)
                same6 = [same6,j];
            end
        end
    end
    
    for i = 1:60
        W6(i,:) = W(same6(i),:);
    end
    
    c = random(1,10)';
    TSPs = W6*c;
end

if n ==5
    same5= [];
    matrix5 = matrix(:,2:size(matrix,2));
    for i = 1:size(tsp5mat,1)
        for j = 1:size(matrix5,1)
            if tsp5mat(i,:) == matrix5(j,:)
                same5 = [same5,j];
            end
        end
    end
    
    for i = 1:size(tsp5mat,1)
        W5(i,:) = W(same5(i),:);
    end
    
    c = [1,3,5,7,9,2,4,6,8,10]';
    TSPs = W5*c;
end