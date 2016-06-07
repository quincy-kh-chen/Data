for i=1:10; 
Filename=['/Users/Hsin/Desktop/hw2/data/delta/t' num2str(i) '.txt'];
l=load(Filename);
a=l(:,1);
b=l(:,2);
subplot(4,4,i)
plot(a,b);
end 
