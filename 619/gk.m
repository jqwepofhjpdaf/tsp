n=4;
g=zeros(1,n);
for k=1:n-1
    g(k)=nchoosek(n+1,2)-nchoosek(n+1-k,2);
end
g(n)=nchoosek(n+1,2);
