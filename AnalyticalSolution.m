syms Cf Cr lf lr Iz m V k1 k2 k3 k4 delte R;
syms a22 a23 a24 a42 a43 a44 b12 b14 b22 b24 g1 g2 g3 g4;
%a=[0 1 0 0;0 a22 a23 a24; 0 0 0 1;0 a42 a43 a44];
%b1=[0;b12;0;b14];
%b2=[0;b22;0;b24];
G=[g1;g2;g3;g4];
%G=[g1;0;0;0];
%x=-(a-b1*K)^(-1)*(b1*delte+b2*V/R);

A=[0 1 0 0;...
    0 -(2*Cf+2*Cr)/(m*V) (2*Cf+2*Cr)/m (-2*Cf*lf+2*Cr*lr)/(m*V);...
    0 0 0 1;...
    0 (-2*Cf*lf+2*Cr*lr)/(Iz*V) (2*Cf*lf-2*Cr*lr)/Iz -(2*Cf*lf*lf+2*Cr*lr*lr)/(Iz*V)];
B1=[0; 2*Cf/m; 0; 2*Cf*lf/Iz];
B2=[0;(-2*Cf*lf+2*Cr*lr)/(m*V)-V;0;-(2*Cf*lf*lf+2*Cr*lr*lr)/(Iz*V)];
K=[k1 k2 k3 k4];

x_s=-inv(A-B1*K)*(B1*delte+B2*V/R);
x_ss=-inv(A-B1*K)*(B1*delte+B2*V/R+G);

delte_f1=solve(x_ss(1),delte);
simplify(delte_f1);
%delte_f1=solve(x_s(1),delte);

simplify(delte_ff)
pretty(ans);

simplify(x_s(1))
aaa=1/(2*R*Cf*Cr*V*(lf+lr))
Ds=subexpr(ans,'aaa') 
