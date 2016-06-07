%CraneDisturbance
%xw=x*cos(r)-sin(r)*(x*sin(r)+l*cos(theta))/cos(r);
%fxw=fx*cos(r)-fy*sin(r);
%fyw=fx*sin(r)+fy*cos(r);

%xw=x(t)*cos(r(t))-sin(r(t))*(x(t)*sin(r(t))+l*cos(theta(t)))/cos(r(t));
%fxw=fx*cos(r)-fy*sin(r);
%fyw=fx*sin(r)+fy*cos(r);
syms theta_cr xcr ycr xt theta_ship xship yship
Tcrane=[cos(theta_cr) -sin(theta_cr) xcr ;sin(theta_cr) cos(theta_cr) ycr ;0 0 1];
Ttrolley=[1 0 xt;0 1 0;0 0 1];
Tship=[cos(theta_ship) -sin(theta_ship) xship ;sin(theta_ship) cos(theta_ship) yship ;0 0 1];
%T_{ship}^{-1}T_{crane}T_{trolley}
x=inv(Tship)*Tcrane*Ttrolley