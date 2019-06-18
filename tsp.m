n = 5;
V = zeros(factorial(n-1),n*(n-1)/2);

for index = 0:factorial(n-1)-1
    it = index;
    cycle = [1 zeros(1,n-1)];
    remains = 2:n;
    for k=2:n
        temp = floor(it/factorial(n-k))+1;
        cycle(k) = remains(temp);
        remains(temp)=[];
        it = mod(it,factorial(n-k));
    end
    
    v0=1;
    v1=cycle(n);
    V(index+1,(v0-1)*n- v0*(v0-1)/2 +v1-v0)=1;
    for k=2:n
        v0=min(cycle(k-1),cycle(k));
        v1=max(cycle(k-1),cycle(k));
        V(index+1,(v0-1)*n- v0*(v0-1)/2 +v1-v0)=1;
    end
end

indices_to_delete = zeros(1,n);
for i=1:n-1
    indices_to_delete(i) = (i-1)*n- i*(i-1)/2 +n-i;
end
indices_to_delete(n)=1;
indices_to_keep = setdiff(1:n*(n-1)/2,indices_to_delete);

%Vprime = (n-1)*V-2;
matrix = [ones(factorial(n-1),1)  V(:,indices_to_keep)];

W = V;
delete_w = [];
for i =1:length(W(:,1))
    for j = 1:length(W(:,1))
        if i < j
            if W(i,:) == W(j,:)
                delete_w = [delete_w;j];
            end
        end
    end
end

W(delete_w,:) = [];
rank(W-ones(length(W(:,1)),1)*W(1,:))
matrix(delete_w,:) = [];
                
%matrix(delete_w,:) = [];
filename = 'tsp'+string(n)+'.ext';
%filename = 'tsp.ext';
dlmwrite(filename,'V-representation','delimiter','');
dlmwrite(filename,'begin','-append','delimiter','');
dlmwrite(filename,[int2str(size(matrix,1)),' ',int2str(size(matrix,2)),' rational'],'-append','delimiter','');
dlmwrite(filename,matrix,'-append','delimiter',' ');
dlmwrite(filename,'end','-append','delimiter','');
dlmwrite(filename,'adjacency','-append','delimiter','');
