P = importdata('circle10_1.txt');
A=P.data;
A(:,1)=A(:,1)*100;
A(:,2)=A(:,2)*100;
A(:,3)=A(:,3)*100;
scatter3(A(:,1),A(:,2),A(:,3),'.','b')
hold on
xLength=(max(A(:,1))-min(A(:,1)))
yLength=(max(A(:,2))-min(A(:,2)))
zLength=(max(A(:,3))-min(A(:,3)))
ymax=max(A(:,2))
ymax=min(A(:,2))

% P = importdata('circle11.txt');
% E=P.data;
% E(:,1)=E(:,1)*100;
% E(:,2)=E(:,2)*100; 
% E(:,3)=E(:,3)*100;
% scatter3(E(:,1),E(:,2),E(:,3),'.','r')
hold on

% P = importdata('edgePlot_correct.txt');
% E=P.data;
% E(:,1)=E(:,1)*100;
% E(:,2)=E(:,2)*100; 
% E(:,3)=E(:,3)*100;
% scatter3(E(:,1),E(:,2),E(:,3),'g')

xlabel('x')
ylabel('y')
zlabel('z')
axis('equal')
rotate3d on;