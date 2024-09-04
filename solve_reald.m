clear;
A = xlsread('.xlsx',-1);
x1=A(:,6);
y1=A(:,7);
H=A(:,3);
F=A(:,10);
a=46;

syms x y f h;
for j = 1:length(x1)
    a=46;
    disp(j);
    x=x1(j);
    y=y1(j);
    h=H(j);
    f=F(j);
    disp(x);
    disp(y);
    disp(h);
    disp(f);
    disp(tand(a));
    d(j)=abs((h*(f^2+x^2-y*f*tand(a))/((f*tand(a)+y)*sqrt(f^2+x^2))));
    disp(d(j));
end
xlswrite('.xlsx',d','','');