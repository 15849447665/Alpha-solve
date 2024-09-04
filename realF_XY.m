clear;
A = xlsread('',-1);
x0=A(:,4);
y0=A(:,5);
H=A(:,3);
X0=A(:,8);
Y0=A(:,9);
a=45.95313101;
x1=(x0-960)*(3.36/0.67/1920);
y1=(y0-540)*(1.9/0.67/1080);
xlswrite('',x1,'','');
xlswrite('',y1,'','');
syms x y h d X Y;
for j = 1:length(x1)
    x=x1(j);
    y=y1(j);
    X=X0(j);
    Y=Y0(j);
    h=H(j);
    a=;
    f(j)=(x*Y*cosd(a))/X;
end
xlswrite('',f','','J3');

