clear
clc
n = 7;
maximum = 0;
minimum = 1000;
count58 = 0;
count32 = 0; 
fileadj = 'bd'+string(n)+'adjmat.txt';
filever = 'bd'+string(n)+'_ver.txt';

Adj = importdata(fileadj);
V = importdata(filever);
V = V(:,2:size(V,2));

for a = 1:30
    
        c = rand(size(V,2),1);
        TSPs = V*c;
        
        temp = TSPs;
        
        arcs = zeros(size(TSPs,1),size(TSPs,1));
        
        for i = 1:size(Adj,1)
            for j = 1:size(Adj,2)
                if temp(i,1)<temp(j,1)
                    if Adj(i,j) == 1
                        arcs(i,j) = 1;
                    end
                    
                else
                    arcs(i,j) = 0;
                end
                
            end
            arcs(i,i) = 0;
        end
                
    
    
    A = arcs;
    
%     for i = 1:length(arcs)
%         for j = 1:length(arcs)
%             if A(i,j) == -1
%                 A(i,j) = 0;
%             end
%         end
%     end
    
    Ac = A;
    A10 = A^10;
    A10 = (A10~=0);
    count = 0;
    while 1
        if Ac == zeros(size(A,1),size(A,2))
            %count
            break
        end
        count = count+1;
        Alogic = (Ac~=0);
        Ac = Alogic*A10;
    end
    %final= A^(count-1);
    %dlmwrite('arcs.csv',arcs);
    
    if count >maximum
        maximum = count;
    end
    if count <minimum
        minimum = count;
    end
    
%     if count >= 58
%         count58 = count58+1;
%         maxmatrix (:,count58) = c(:,1);
%     end
%     if count<= 32
%         count32 = count32+1;
%         minmatrix(:,count32) = c(:,1);
%     end
        record(a) = count;
    
        a
end
maximum;
minimum;
figure(1);
histogram(record);