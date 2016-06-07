function classhw2=classhw2(x,M1,M2,M3,C1,C2,C3)
x_u1=(x-M1);
p1=(1/(((2*pi)^1.5)*sqrt(det(C1))))*exp(-(x_u1*inv(C1)*x_u1')/2);
x_u2=(x-M2);
p2=(1/(((2*pi)^1.5)*sqrt(det(C2))))*exp(-(x_u2*inv(C2)*x_u2')/2);
x_u3=(x-M3);
p3=(1/(((2*pi)^1.5)*sqrt(det(C3))))*exp(-(x_u3*inv(C3)*x_u3')/2);
p=[p1,p2,p3*3];
[M b]=max(p);
b
end