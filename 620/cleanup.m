 n = 7;
 filename = 'bd'+string(n)+'_adj.txt';
 
 dat=importdata(filename);
 %data1=dat.data;
 data1 = string(dat);
 A=split(data1,':');
 data1=A(1:size(data1,1),2);
 
 writematrix(data1,'cleaned_'+filename);
 

 %writematrix(B,'B.txt');
% data=load('B.txt');
% Adj=zeros(60,60);
% full=1:60;
% for i=1:60
%     Adj(i,:)=ismember(full,data(i,:));
% end
