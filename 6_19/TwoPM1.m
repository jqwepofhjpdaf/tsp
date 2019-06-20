fid = fopen('clean.txt');
tline = fgetl(fid);
count=1;
full=1:25;
Adjacency=[];
while ischar(tline)
    tline = strip(tline);
    tline_split=split(tline,' ');
    tline_split=str2double(tline_split);
    A = ismember(full,tline_split);
    
    Adjacency=[Adjacency A'];
    
    tline_split=[];
    tline = fgetl(fid);
    count=count+1;
end
data=importdata('vertex.txt');


r=randperm(20,15);
point=data*r';
for i=1:25
    for j=1:25
        if Adjacency(i,j)==1
            if point(i)>point(j)
                Adjacency(i,j)=0;
            end
        end
    end
    Adjacency(i,i)=1
end

B=Adjacency^2;

        
        
            




