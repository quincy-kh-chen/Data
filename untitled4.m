for i=6:30
Filename=['/Users/Hsin/Desktop/test/test' num2str(i) '.txt'];
test=load(Filename);
l=load(Filename);
a=l(:,1);
b=l(:,2);
subplot(5,5,i-5)
plot(a,b);
end