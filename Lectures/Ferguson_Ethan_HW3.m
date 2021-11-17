% Ferguson Ethan
% ME 203
% HW #3
clc, clear all, format compact;
%% Problem 1

 A=[0 -7 6;5 -4 3;10 -1 9;15 1 0;20 2 -1];
 
 plot(A(:,1), A(:,2:end)) % first column is the x-values and next 2 are the y value
 figure(1)
 title('A')
 xlabel('Time(s)')
 ylabel('Force(N)')
 
 %% Problem 2
 A=[3 7 -4 12; -5 9 10 2;6 13 8 11;15 5 4 1]
 %a
 B=A(:,2:end) % B consisting all elements of second through fourth Columns of A
 %b
 C=A(2:end,:)% C consisting all elements of sencond though fouth rows of A
 %c
 D=A(1:2,2:end)% D consisting first two rows and last three columns of A
 
 %% Problem 3
 A=[56 32;24 -16];
 B=[14 -4;6 -2];
 %a
 C=A*B %Multiplication of Maticies A and B
 %b
 D=A./B % Division of Matricies A and B
 %c
 E=B.^3 % B raised by the power of 3 element by elelment
 
 %% Problem 4
 %a
 A=6*pi()*atan(12.5)+4
 %b
 B=5*tan(3*asin(13/5))
 
 %% Problem 5
 %a
 A=[-2 1;-2 1];
 b=[-5; 3];
 x=inv(A)*b
 %b
 D=[-2 1;-8 4];
 e=[3;12];
 y=inv(D)*e
 %c
 G=[-2 1;-2 1];
 h=[-5; -5.00001];
 z=inv(G)*h
 %d
 J=[1 5 -1 6;2 -1 1 -2;-1 4 -1 3;3 -7 -2 1];
 l=[19;7;30;-75];
 w=inv(J)*l
 
 %% Problem 6
 t=1:.1:3; %time in minutes
 %funtion for degrees celsius
 T=6*log(t)-7*exp(0.2*t);
 figure(2)
 plot(t,T)
 title('Celsius graph over period of minutes')
 xlabel('time (m)')
 ylabel('Degrees Celsius')
 
 %% Problem 7
 %variables
 a=2;
 b=2;
 c=2;
 d=4;
 %1
 (a==b)&((b==c)|(a==c))
 %2
 (a==b)|((b==c)&(a==c))
 
 %% Problem 8 part a
  X=input('enter an x value:')
if X>0
    grade='F';
    if X>60
        grade='D';
        if X>70
            grade='C';
            if X>80
                grade='B';
                if X>90
                    grade='A';
                end
            end
        end
    end
end
grade
%% Problem 8 part b
X=input('enter an x value:')
if X>=90
    disp('A')
elseif X>=80&X<90
    disp('B')
elseif X>=70&X<80
    disp('C')
elseif X>=60&X<70
    disp('D')
else disp('F')
end
    
                
 
 