% dat=importdata('init.txt');
% data1=string(dat);
% A=split(data1,':');
% B=A(1:60,2);
%writematrix(B,'B.txt');
n = 7;
filename = 'cleaned_bd'+string(n)+'_adj.txt';

data=load(filename);
Adj=zeros(size(data,1),size(data,1));
full=1:size(data,1);
for i=1:size(data,1)
    Adj(i,:)=ismember(full,data(i,:));
end

writematrix(Adj,'bd'+string(n)+'adjmat.txt');
