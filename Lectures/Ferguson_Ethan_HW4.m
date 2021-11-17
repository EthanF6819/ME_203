% Ferguson, Ethan
% HW 4
clc; clear all; format compact;
%% Question 1
A=[3 5 -4 ; -8 -1 33; -17 6 -9];

for x=1:3
    for y=1:3
        if A(x,y)>=1
            B(x,y)=log(A(x,y));
        elseif A(x,y)<=-1
            B(x,y)=A(x,y)+20;
        end
    end
end
B

%% Question 1
A=[3 5 -4 ; -8 -1 33; -17 6 -9];
if A(1,1)>=1
  B(1,1)=log(A(1,1));
elseif A(1,1)<=-1
  B(1,1)=A(1,1)+20;
end

if A(1,2)>=1
  B(1,2)=log(A(1,2));
elseif A(1,2)<=-1
  B(1,2)=A(1,2)+20;
end

if A(1,3)>=1
  B(1,3)=log(A(1,3));
elseif A(1,3)<=-1
  B(1,3)=A(1,3)+20;
end

if A(2,1)>=1
  B(2,1)=log(A(2,1));
elseif A(2,1)<=-1
  B(2,1)=A(2,1)+20;
end

if A(2,2)>=1
  B(2,2)=log(A(2,2));
elseif A(2,2)<=-1
  B(2,2)=A(2,2)+20;
end

if A(2,3)>=1
  B(2,3)=log(A(2,3));
elseif A(2,3)<=-1
  B(2,3)=A(2,3)+20;
end

if A(3,1)>=1
  B(3,1)=log(A(3,1));
elseif A(3,1)<=-1
  B(3,1)=A(3,1)+20;
end

if A(3,2)>=1
  B(3,2)=log(A(3,2));
elseif A(3,2)<=-1
  B(3,2)=A(3,2)+20;
end

if A(3,3)>=1
  B(3,3)=log(A(3,3));
elseif A(3,3)<=-1
  B(3,3)=A(3,3)+20;
end
B
%% Problem 2
k = 1; b = -2; x = -1; y = -2;
while k <= 3 k,
    b, x, y
    y = x^2 - 3;
        if y < b
            b = y;
        end
    x = x + 1;
    k = k + 1;
end
subplot(1,1,1)
img=imread('Chart_for_problem_2.png');
image(img)

%% Question 3

Weight=input('what is the Weight?:')
Material=input('what is the Material?:','s')

switch Material
    case 'Metal on Metal'
        F=.2*Weight
    case 'Wood on Wood'
        F=.35*Weight
    case 'Metal on Wood'
        F=.4*Weight
    case 'Rubber on Concrete'
        F=.7*Weight
end

%% Question 4

x1=input('X1=');
x2=input('X2=');
x3=input('X3=');
x4=input('X4=');
y1=input('Y1=');
y2=input('Y2=');
y3=input('Y3=');
y4=input('Y4=');
X=[x1 x2 x3 x4];
Y=[y1 y2 y3 y4];
f=polyfit(X,Y,3)
a=f(1)
b=f(2)
c=f(3)
d=f(4)
fprintf('(%.1f)X^3+(%.1f)X^2+(%.1f)X+(%.1f)',a,b,c,d)

%% Problem 5

i=0;
for t=0:.001:4;
    i=i+1;
    x(i)=5*t-10;
    y(i)=25*t.^2-120*t+144;
end
d=sqrt(x.^2+y.^2);
dmin=(min(d))
tmin=(find(d==dmin)-1)*.001


















