dat=importdata('init.txt');
data1=string(dat);
A=split(data1,':');
B=A(1:60,2);
%writematrix(B,'B.txt');
data=load('B.txt');
Adjacency=zeros(60,60);
full=1:60;
for i=1:60
    Adjacency(i,:)=ismember(full,data(i,:));
end
