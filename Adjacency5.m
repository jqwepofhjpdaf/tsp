dat=importdata('init.txt');
data1=string(dat);
A=split(data1,':');
B=A(1:12,2);
%writematrix(B,'C.txt');
data=load('C.txt');
Adjacency=zeros(12,12);
full=1:12;
for i=1:12
    Adjacency(i,:)=ismember(full,data(i,:));
end


