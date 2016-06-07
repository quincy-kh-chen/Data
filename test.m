Z=randn(1000,3);
L=chol([1 0 0;0 4 1;0 1 6]);
u1=ones(1000,1);
u2=5*ones(1000,1);
u3=-3*ones(1000,1);
u=[u1,u2,u3];
x=u+Z*L;

d=x-u;
%m=mean(x);
M=[sum(x(:,1))/length(x) sum(x(:,2))/length(x) sum(x(:,3))/length(x)]
%c=cov(x);
C=d'*d/(1000-1);


x=[0 0 0; 1 6 -3; 0.8 3.0 -1.5; 8 -8 8; -1 1 -1; 0 5 0 ];
x_u=(x-u(1,:));
p=(1/2*pi*sqrt(det(C)))*exp(x_u*C'*x_u');

