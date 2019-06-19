dat=importdata('ead.txt');
data1=load('quicksort.txt');
data=dat(:,2:5);
ans1=[];
ans2=[];
ans3=[];
R1=[];
R2=[];
for l=1:3000
r=randi([1,20],1,4);
point=data*r';
data1_trans=zeros(24,3);
for i=1:24
    for j=1:3
        data1_trans(i,j)=point(data1(i,j));
    end
end
acylic=zeros(24,24);
for i=1:24
    for j=1:3
    if point(i)<data1_trans(i,j)
        acylic(i,data1(i,j))=1;
    end
    end
end
ans1=[ans1 isequal(acylic^5,zeros(24,24))];
ans2=[ans2 isequal(acylic^6,zeros(24,24))];
ans3=[ans3 find(acylic^7 ~=zeros(24,24))];
if isequal(acylic^5,zeros(24,24))==1
    R1=[R1 r'];
end
if isequal(acylic^6,zeros(24,24))==1
    R2=[R2 r'];
end
end


